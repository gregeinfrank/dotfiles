Vim�UnDo� ����zth����o�Ȯ���ס����i                                      Xf
�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             Xf
�     �                  �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Xf
�    �                  5�_�                     	        ����                                                                                                                                                                                                                                                                                                                            	           	           V        Xf
�    �      
          _    QC.default_conn_adapter = QC::ConnAdapter.new(ActiveRecord::Base.connection.raw_connection)5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             Xf
�     �                 pring.after_fork do   end�                 �               #    if defined?(ActiveRecord::Base)       end�                     �                         if Octopus.enabled?             end�                           �               a                  Octopus.config[Rails.env.to_s]['master'] = ActiveRecord::Base.connection.config   W                        ActiveRecord::Base.connection.initialize_shards(Octopus.config)                               end       5              ActiveRecord::Base.establish_connection   m                  QC.default_conn_adapter = QC::ConnAdapter.new(ActiveRecord::Base.connection.raw_connection)                       end   end5��