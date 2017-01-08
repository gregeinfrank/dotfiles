Vim�UnDo� e���/�Z�=\��ԋ3��0�F�=�k  �                                   X&5    _�                     <   V    ����                                                                                                                                                                                                                                                                                                                            =   V       <   V       V   V    X&2W     �   ;   <          n      transformed = Contact::IosAPI.transform_composite_for_ios(composite_blob, entry, harmonized_entry, user)   a      expect(EntrySchema::CompositeEntryFetcher.for_ios_api(entry.id, user.id)).to eq transformed5�_�                    =        ����                                                                                                                                                                                                                                                                                                                            <   V       <   V       V   V    X&2X     �   <   =           5�_�                    5        ����                                                                                                                                                                                                                                                                                                                            =          5           V       X&2g    �   4   5       	          describe 'self.for_ios_api' do   8    it 'transforms the composited entry view for ios' do         harmonized_entry   U      ue_blob = EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)   M      he_blob = EntrySchema::CompositeEntryFetcher.harmonized_blob_for(entry)   ^      composite_blob = EntrySchema::CompositeEntryFetcher.composite_blob_for(ue_blob, he_blob)       end     end5�_�                           ����                                                                                                                                                                                                                                                                                                                            3                    V       X&4�     �                <    it 'returns a hash of composite and harmonized entry' do         harmonized_entry   U      ue_blob = EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)   M      he_blob = EntrySchema::CompositeEntryFetcher.harmonized_blob_for(entry)   ^      composite_blob = EntrySchema::CompositeEntryFetcher.composite_blob_for(ue_blob, he_blob)       U      result = EntrySchema::CompositeEntryFetcher.for_internal_api(entry.id, user.id)   A      # Make sure properties are in the same order when comparing   m      result[:composite_entry][:properties] = result[:composite_entry][:properties].sort_by{|prop| prop[:id]}   Y      composite_blob[:properties] = composite_blob[:properties].sort_by{|prop| prop[:id]}         expect(result).to eq({   (        composite_entry: composite_blob,   "        harmonized_entry: he_blob,   1        harmonized_entry_id: harmonized_entry.id,           user_fin_thing_id: nil,   $        selected_entry_id: entry.id,         })       end       o    it 'Provides a masked_value for fields such as Contact::phone_number if represented_in_user_entry=false' do   #      phone_number = '+18478008001'   �      EntrySchema::Builder.from(harmonized_entry, harmonized_entry.source).set_property('Contact::phone_number', { 'value' => phone_number, 'primary' => nil, 'type' => nil}).run       U      ue_blob = EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)   M      he_blob = EntrySchema::CompositeEntryFetcher.harmonized_blob_for(entry)   ^      composite_blob = EntrySchema::CompositeEntryFetcher.composite_blob_for(ue_blob, he_blob)             masked = '847 *** ****'   v      expect(EntrySchema::CompositeEntryFetcher).to receive(:mask_properties).with(composite_blob, user.id) { masked }   ~      expect(EntrySchema::CompositeEntryFetcher.for_internal_api(harmonized_entry.id, user.id)[:composite_entry]).to eq masked       end5�_�                            ����                                                                                                                                                                                                                                                                                                                                      #          V       X&4�     �                #    it 'returns a combined blob' do   n      harmonized_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(harmonized_entry, harmonized: true)   U      ue_blob = EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)       Z      combined = EntrySchema::CompositeEntryFetcher.augment_blob(harmonized_blob, ue_blob)   h      expect(EntrySchema::CompositeEntryFetcher.composite_blob_for(nil, harmonized_blob)).to eq combined       end       ?    it 'returns the harmonized blob if no user_entries blob' do   n      harmonized_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(harmonized_entry, harmonized: true)   o      expect(EntrySchema::CompositeEntryFetcher.composite_blob_for(nil, harmonized_blob)).to eq harmonized_blob       end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       X&4�     �                J    it 'returns a blob from the fin_fin_thing and the harmonized entry' do   n      harmonized_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(harmonized_entry, harmonized: true)   j      fin_thing_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(fin_fin_thing, harmonized: true)   a      combined = EntrySchema::CompositeEntryFetcher.augment_blob(fin_thing_blob, harmonized_blob)   Z      expect(EntrySchema::CompositeEntryFetcher.harmonized_blob_for(entry)).to eq combined       end5�_�                             ����                                                                                                                                                                                                                                                                                                                                      Q          V       X&5    �             3   ;      it 'returns blobs for all associated user entries' do   j        ue_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(entry, harmonized: false, user: user)   s        other_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(other_entry, harmonized: false, user: user)   W        combined = EntrySchema::CompositeEntryFetcher.augment_blob(ue_blob, other_blob)   o        expect(EntrySchema::CompositeEntryFetcher.user_entries_blob_for(harmonized_entry, user)).to eq combined   	      end       X      it 'returns blobs for all associated user entries and user_fin_thing if exists' do   j        ue_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(entry, harmonized: false, user: user)   s        other_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(other_entry, harmonized: false, user: user)           user_fin_thing_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(user_fin_thing, harmonized: false, user: user)       `        combined = EntrySchema::CompositeEntryFetcher.augment_blob(user_fin_thing_blob, ue_blob)   X        combined = EntrySchema::CompositeEntryFetcher.augment_blob(combined, other_blob)   o        expect(EntrySchema::CompositeEntryFetcher.user_entries_blob_for(harmonized_entry, user)).to eq combined   	      end       Y      it 'returns the passed-in entry if no entries are returned with the user source' do   '        some_other_user = create(:user)   u        ue_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(entry, harmonized: false, user: some_other_user)   n        expect(EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, some_other_user)).to eq ue_blob   	      end       end       $    context 'entry is user entry' do   Z      it 'returns blobs for all associated user entries if there is a harmonized entry' do           harmonized_entry   j        ue_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(entry, harmonized: false, user: user)   s        other_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(other_entry, harmonized: false, user: user)   W        combined = EntrySchema::CompositeEntryFetcher.augment_blob(ue_blob, other_blob)       d        expect(EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)).to eq combined   	      end       \      it 'returns blobs for all associated uer entries when there is no harmonized entry' do   j        ue_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(entry, harmonized: false, user: user)   s        other_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(other_entry, harmonized: false, user: user)   W        combined = EntrySchema::CompositeEntryFetcher.augment_blob(ue_blob, other_blob)   d        expect(EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)).to eq combined   	      end       N      it 'returns blobs for all associated user entries and user_fin_thing' do   j        ue_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(entry, harmonized: false, user: user)   s        other_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(other_entry, harmonized: false, user: user)           user_fin_thing_blob = EntrySchema::CompositeEntryFetcher.initialize_blob(user_fin_thing, harmonized: false, user: user)   `        combined = EntrySchema::CompositeEntryFetcher.augment_blob(user_fin_thing_blob, ue_blob)   X        combined = EntrySchema::CompositeEntryFetcher.augment_blob(combined, other_blob)       d        expect(EntrySchema::CompositeEntryFetcher.user_entries_blob_for(entry, user)).to eq combined   	      end       end5��