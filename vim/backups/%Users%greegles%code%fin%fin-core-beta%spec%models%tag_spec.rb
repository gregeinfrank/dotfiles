Vim�UnDo� ��wX�@���!�iij���]�"<
���KA3��                                     X���    _�                              ����                                                                                                                                                                                                                                                                                                                                      #           V       X���    �                (  describe 'self.high_effort_tag_ids' do   [    let!(:high_effort_tags) { Tag::HIGH_EFFORT_TAGS.map {|name| create(:tag, name: name)} }       ;    it 'queries the db when not cached, returns the ids' do   ;      Tag.instance_variable_set(:@high_effort_tag_ids, nil)   -      create_list(:tag, 10) # low_effort_tags   6      expect(Tag).to receive(:where).and_call_original   O      expect(Tag.high_effort_tag_ids).to match_array high_effort_tags.map(&:id)       end       5    it 'caches the results, so no second db query' do   ;      Tag.instance_variable_set(:@high_effort_tag_ids, nil)   #      ids = Tag.high_effort_tag_ids   ;      expect(ids).to match_array high_effort_tags.map(&:id)   (      expect(Tag).to_not receive(:where)   8      expect(Tag.high_effort_tag_ids).to match_array ids       end     end    5��