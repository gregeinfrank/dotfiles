Vim�UnDo� �z�֓���Tm�%���2���{��f'���   �            >         
       
   
   
    X�U    _�                     0        ����                                                                                                                                                                                                                                                                                                                                                             X�*�     �               �   module IsEntryAttribute     SENTIMENTS = {       agree: 1,       disagree: 2,       obsolete: 3,   
  }.freeze         PRIVACIES = {        visible_to_harmonization: 1,   !    hidden_from_harmonization: 2,       needs_review: 3   
  }.freeze         extend ActiveSupport::Concern         included do       include HasChangeTracking       include HasBatchableHooks           enum sentiment: SENTIMENTS       enum privacy: PRIVACIES       "    belongs_to :entry, touch: true   8    belongs_to :schema, class_name: EntryAttributeSchema       #    declare_mutable_column :privacy            before_create :before_create       5    after_commit :after_commit_on_create, on: :create       L    define_batchable_callback [:after_change, :after_delete], :touch_entries   [    define_batchable_callback [:after_change, :after_delete], :after_commit_for_bulk_import       4    validates_each :schema_id do |record, attr, val|   )      unless record.cschema.is_thing_type   *        # Everything must have Thing::type   F        record.errors.add(attr, ": Entry has no Thing::types!") unless   '          record.entry.types.length > 0       Z        # Requiring that each attribute must be eligible based on the Entry's Thing::types   *        # TODO(viyer): add a test for this           record.errors.add(             attr,   t          ": #{record.cschema.qualified_name} cannot be added to Entry<#{record.entry.types_inclusive.map(&:name)}>"   X        ) unless record.entry.types_inclusive.map(&:id).include?(record.cschema.type.id)   	      end       $      if record.cschema.is_temporary   N        record.errors.add(attr, ": Cannot persist a temporary attribute type")   	      end       end           def before_create   <      get_attribute_wrapper_instance.run_hook :before_create       end           def after_commit_on_create   @      # For some reason, when `delete_with_metadata!` is called,   ?      # the `after_commit on: :create` callback is still called   D      # so we have to double check that the attribute is not deleted   U      get_attribute_wrapper_instance.run_hook :after_commit_on_create unless deleted?       end           def cschema   +      EntryAttributeSchema.cfind(schema_id)       end       &    def get_attribute_wrapper_instance   )      EntryAttributeType::Base.wrap(self)       end     end       0  # This class represents a property_data column     class TypedColumn   9    attr_accessor :expected_type_key, :allow_nil, :column   8    def initialize(column, expected_type_key, allow_nil)         self.column = column   0      self.expected_type_key = expected_type_key          self.allow_nil = allow_nil       end       +    def deserialize_value(value, schema_id)   4      schema = EntryAttributeSchema.cfind(schema_id)         allow_nil && value.nil? ?           nil :   e        EntrySchema::Value.deserialize_property(value, schema.public_send(expected_type_key), schema)       end     end         class_methods do   O    # This magic method allows a column with property data to exist. It will be   L    # stored in the db in a "serialized_<foo>" column. Methods named for the   H    # column (.foo and .foo=) are dynamically declared; the data is also   W    # validated via `EntrySchema::Value`.  We use this to share property validation for   :    # EntryProperty.value and EntryRelationship.edge_data.       #   J    # expected_type_key is a field on 'schema'. We have to do it like this   M    # because has_property_data is a class method, and doesn't have access to   *    # the expected type at definition time       #   	    # ex.       # has_property_data :foo   G    def has_property_data(column, expected_type_key:, allow_nil: false)         @property_data ||= {}   T      @property_data[column] = TypedColumn.new(column, expected_type_key, allow_nil)       :      serialized_column_name = 'serialized_' + column.to_s       2      validates_each column do |record, attr, val|   E        # NOTE: Validation happens after a round of serialization and           # deserialization.   E        expected_type = record.cschema.public_send(expected_type_key)   6        record.get_attribute_wrapper_instance.validate   �        EntrySchema::Value.validate_for_property(val, expected_type, record.cschema, record) unless expected_type.nil? || (allow_nil && val.nil?)   	      end             # Deserializer         # def value         define_method(column) do   A        serialized_value = read_attribute(serialized_column_name)           @memoized ||= {}   5        @memoized[column] ||= serialized_value.nil? ?             nil :   w          EntrySchema::Value.deserialize_property(serialized_value[0], cschema.public_send(expected_type_key), cschema)   	      end             # Serializer         # def value=   6      define_method((column.to_s + '=').to_sym) do |v|   +        # This will cast the column to JSON   >        expected_type = cschema.public_send(expected_type_key)   S        wrapper_class = EntryAttributeType::Base.wrapper_class(expected_type&.name)   7        v = wrapper_class.transform_value_for_create(v)           write_attribute(   !          serialized_column_name,   [          v.nil? ? nil : [EntrySchema::Value.serialize_property(v, expected_type, cschema)]   	        )       6        @memoized.delete(column) unless @memoized.nil?   	      end       end       %    def semantically_eql?(lst1, lst2)   0      ObjectCompare.unordered_eql?(lst1, lst2) {   7        |p| [p.schema_id, p.sort_key, p.for_comparison]         }       end       -    def deserialize_params(params, schema_id)   3      @property_data.each do |column, typed_column|   V        deserialized_value = typed_column.deserialize_value(params[column], schema_id)   A        params[column] = deserialized_value if deserialized_value   	      end         params       end       L    # Currently, this method invokes #after_commit_callback which we require   D    # using a NotImplementedError. Because this method is invoked in   J    # after_commit, we need to manually invoke this method whenever we use   M    # ActiveRecord::Import, which skips rails callbacks. If we wanted to gain   B    # the granularity of the rails after_create, after_update, and   M    # after_delete callbacks, we can implement other after_*_callback methods   E    # and switch on the existence of id and deleted_at in the keys of   C    # #previous_changes to determine which callback method to call.   +    def after_commit_for_bulk_import(insts)   N      wrapped_insts = insts.map { |inst| inst.get_attribute_wrapper_instance }   =      wrapped_insts.map { |inst| inst.after_commit_callback }   �      wrapped_insts.group_by { |inst| inst.class }.each { |klass, instances| klass.bulk_after_commit_callback(instances.map(&:attribute)) }       end           def touch_entries(insts)   J      # NOTE this will not run after_touch, after_commit hooks on Entry --   (      # should we fire those explicitly?   R      Entry.where(id: insts.map(&:entry_id).uniq).update_all(updated_at: Time.now)       end     end   end5�_�                    0        ����                                                                                                                                                                                                                                                                                                                                                             X�+     �               �   module IsEntryAttribute     SENTIMENTS = {       agree: 1,       disagree: 2,       obsolete: 3,   
  }.freeze         PRIVACIES = {        visible_to_harmonization: 1,   !    hidden_from_harmonization: 2,       needs_review: 3   
  }.freeze         extend ActiveSupport::Concern         included do       include HasChangeTracking       include HasBatchableHooks           enum sentiment: SENTIMENTS       enum privacy: PRIVACIES       "    belongs_to :entry, touch: true   8    belongs_to :schema, class_name: EntryAttributeSchema       #    declare_mutable_column :privacy            before_create :before_create       5    after_commit :after_commit_on_create, on: :create       L    define_batchable_callback [:after_change, :after_delete], :touch_entries   [    define_batchable_callback [:after_change, :after_delete], :after_commit_for_bulk_import       4    validates_each :schema_id do |record, attr, val|   )      unless record.cschema.is_thing_type   *        # Everything must have Thing::type   F        record.errors.add(attr, ": Entry has no Thing::types!") unless   '          record.entry.types.length > 0       Z        # Requiring that each attribute must be eligible based on the Entry's Thing::types   *        # TODO(viyer): add a test for this           record.errors.add(             attr,   t          ": #{record.cschema.qualified_name} cannot be added to Entry<#{record.entry.types_inclusive.map(&:name)}>"   X        ) unless record.entry.types_inclusive.map(&:id).include?(record.cschema.type.id)   	      end       end           def before_create   <      get_attribute_wrapper_instance.run_hook :before_create       end           def after_commit_on_create   @      # For some reason, when `delete_with_metadata!` is called,   ?      # the `after_commit on: :create` callback is still called   D      # so we have to double check that the attribute is not deleted   U      get_attribute_wrapper_instance.run_hook :after_commit_on_create unless deleted?       end           def cschema   +      EntryAttributeSchema.cfind(schema_id)       end       &    def get_attribute_wrapper_instance   )      EntryAttributeType::Base.wrap(self)       end     end       0  # This class represents a property_data column     class TypedColumn   9    attr_accessor :expected_type_key, :allow_nil, :column   8    def initialize(column, expected_type_key, allow_nil)         self.column = column   0      self.expected_type_key = expected_type_key          self.allow_nil = allow_nil       end       +    def deserialize_value(value, schema_id)   4      schema = EntryAttributeSchema.cfind(schema_id)         allow_nil && value.nil? ?           nil :   e        EntrySchema::Value.deserialize_property(value, schema.public_send(expected_type_key), schema)       end     end         class_methods do   O    # This magic method allows a column with property data to exist. It will be   L    # stored in the db in a "serialized_<foo>" column. Methods named for the   H    # column (.foo and .foo=) are dynamically declared; the data is also   W    # validated via `EntrySchema::Value`.  We use this to share property validation for   :    # EntryProperty.value and EntryRelationship.edge_data.       #   J    # expected_type_key is a field on 'schema'. We have to do it like this   M    # because has_property_data is a class method, and doesn't have access to   *    # the expected type at definition time       #   	    # ex.       # has_property_data :foo   G    def has_property_data(column, expected_type_key:, allow_nil: false)         @property_data ||= {}   T      @property_data[column] = TypedColumn.new(column, expected_type_key, allow_nil)       :      serialized_column_name = 'serialized_' + column.to_s       2      validates_each column do |record, attr, val|   E        # NOTE: Validation happens after a round of serialization and           # deserialization.   E        expected_type = record.cschema.public_send(expected_type_key)   6        record.get_attribute_wrapper_instance.validate   �        EntrySchema::Value.validate_for_property(val, expected_type, record.cschema, record) unless expected_type.nil? || (allow_nil && val.nil?)   	      end             # Deserializer         # def value         define_method(column) do   A        serialized_value = read_attribute(serialized_column_name)           @memoized ||= {}   5        @memoized[column] ||= serialized_value.nil? ?             nil :   w          EntrySchema::Value.deserialize_property(serialized_value[0], cschema.public_send(expected_type_key), cschema)   	      end             # Serializer         # def value=   6      define_method((column.to_s + '=').to_sym) do |v|   +        # This will cast the column to JSON   >        expected_type = cschema.public_send(expected_type_key)   S        wrapper_class = EntryAttributeType::Base.wrapper_class(expected_type&.name)   7        v = wrapper_class.transform_value_for_create(v)           write_attribute(   !          serialized_column_name,   [          v.nil? ? nil : [EntrySchema::Value.serialize_property(v, expected_type, cschema)]   	        )       6        @memoized.delete(column) unless @memoized.nil?   	      end       end       %    def semantically_eql?(lst1, lst2)   0      ObjectCompare.unordered_eql?(lst1, lst2) {   7        |p| [p.schema_id, p.sort_key, p.for_comparison]         }       end       -    def deserialize_params(params, schema_id)   3      @property_data.each do |column, typed_column|   V        deserialized_value = typed_column.deserialize_value(params[column], schema_id)   A        params[column] = deserialized_value if deserialized_value   	      end         params       end       L    # Currently, this method invokes #after_commit_callback which we require   D    # using a NotImplementedError. Because this method is invoked in   J    # after_commit, we need to manually invoke this method whenever we use   M    # ActiveRecord::Import, which skips rails callbacks. If we wanted to gain   B    # the granularity of the rails after_create, after_update, and   M    # after_delete callbacks, we can implement other after_*_callback methods   E    # and switch on the existence of id and deleted_at in the keys of   C    # #previous_changes to determine which callback method to call.   +    def after_commit_for_bulk_import(insts)   N      wrapped_insts = insts.map { |inst| inst.get_attribute_wrapper_instance }   =      wrapped_insts.map { |inst| inst.after_commit_callback }   �      wrapped_insts.group_by { |inst| inst.class }.each { |klass, instances| klass.bulk_after_commit_callback(instances.map(&:attribute)) }       end           def touch_entries(insts)   J      # NOTE this will not run after_touch, after_commit hooks on Entry --   (      # should we fire those explicitly?   R      Entry.where(id: insts.map(&:entry_id).uniq).update_all(updated_at: Time.now)       end     end   end5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             X�@    �   �   �   �            �   �   �   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                             X�Ae    �   �   �   �            �   �   �   �    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        X�G!    �   �   �          O      Flog.info("**************** Calling touch_entries *********************")         binding.pry5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X��     �      !   �          �      !   �    5�_�      	                 5    ����                                                                                                                                                                                                                                                                                                                                          5       V   E    X��    �                5    after_commit :after_commit_on_create, on: :create    5�_�      
          	   =       ����                                                                                                                                                                                                                                                                                                                                          5       V   E    X�R     �   <   >   �            �   <   >   �    5�_�   	               
   =       ����                                                                                                                                                                                                                                                                                                                                          5       V   E    X�T    �   =   ?   �            �   =   ?   �    5�_�              	              ����                                                                                                                                                                                                                                                                                                                                          5       V   E    X�	    �         �      F    define_batchable_callback [:after_change], :after_commit_on_create5��