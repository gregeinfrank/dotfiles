Vim�UnDo� s![�o����N��{YG�hT��R�MO�  �                                   W�:�    _�                    �        ����                                                                                                                                                                                                                                                                                                                           �   1      �           V   F    W�9�    �  �  �          2    it 'errors when KE has all lowercase title' do   ;      entry = entry_double(kb: true, title: "karl the fog")   )      actions = Clippy.new(entry).actions   �      expect(has_suggestion_substring(actions, "Entry title should be properly capitalized, not all uppercase, lowercase, or a bad mix.")).to eq true       end       2    it 'errors when KE has all uppercase title' do   ;      entry = entry_double(kb: true, title: "KARL THE FOG")   )      actions = Clippy.new(entry).actions   �      expect(has_suggestion_substring(actions, "Entry title should be properly capitalized, not all uppercase, lowercase, or a bad mix.")).to eq true       end       5    it 'suggests when KE has weird capitalization' do   ;      entry = entry_double(kb: true, title: "KArl the FOG")   )      actions = Clippy.new(entry).actions   �      expect(has_suggestion_substring(actions, "Entry title should be properly capitalized, not all uppercase, lowercase, or a bad mix.")).to eq true       end       :    it 'passes when KE has proper title capitalization' do   ;      entry = entry_double(kb: true, title: "Karl The Fog")   )      actions = Clippy.new(entry).actions   �      expect(has_suggestion_substring(actions, "Entry title should be properly capitalized, not all uppercase, lowercase, or a bad mix.")).to eq false       end       L    it 'fails when KE only capitalizes the first word of multiword title' do   ;      entry = entry_double(kb: true, title: "Karl the fog")   )      actions = Clippy.new(entry).actions   �      expect(has_suggestion_substring(actions, "Entry title should be properly capitalized, not all uppercase, lowercase, or a bad mix.")).to eq true       end    5�_�                     �        ����                                                                                                                                                                                                                                                                                                                            �          �           V   9    W�:�    �   �   �              +    it 'errors when Title contains date' do   .      entry = entry_double(title: "food 1/12")   )      actions = Clippy.new(entry).actions   e      expect(has_warning_substring(actions, "Entry Title looks like it contains a date.")).to eq true       end       3    it 'passes when Title does not contain date' do   4      entry = entry_double(title: "Sterling Archer")   )      actions = Clippy.new(entry).actions   f      expect(has_warning_substring(actions, "Entry Title looks like it contains a date.")).to eq false       end5��