Vim�UnDo� Al!s�C`c7��3�Xە�I����d�u�+n%�   j                  	       	   	   	    X�E    _�                             ����                                                                                                                                                                                                                                                                                                                                                             X���     �   
             Ivar SearchFiltersActions = require('../../actions/SearchFiltersActions');5�_�                    o       ����                                                                                                                                                                                                                                                                                                                            q          o          V       X���     �   n   o          +      if (!_.isEmpty(searchFilterParams)) {   E        SearchFiltersActions.updateSearchFilters(searchFilterParams);         }5�_�                    x       ����                                                                                                                                                                                                                                                                                                                            o          o          V       X���     �   w   x          *    SearchFiltersActions.setInitialData();5�_�                    h        ����                                                                                                                                                                                                                                                                                                                            h   
       o           V   
    X���    �   g   h          "      let searchFilterParams = {};   3      if (deepLinkingParams.active !== undefined) {   =        searchFilterParams.active = deepLinkingParams.active;         }   >      if (deepLinkingParams.within_last_hours !== undefined) {   S        searchFilterParams.within_last_hours = deepLinkingParams.within_last_hours;         }    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X���    �                *var Entry = require('../../models/Entry');    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�X     �                =var EntriesActions = require('../../actions/EntriesActions');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�Y     �                '    EntriesActions.initialLoad(userId);5�_�      	              k       ����                                                                                                                                                                                                                                                                                                                                                             X�Z    �   j   k          $    EntriesActions.setInitialData();5�_�                  	           ����                                                                                                                                                                                                                                                                                                                                                 V       X�E    �                    A    $.ajax('/api/users/knowledge_base').then((knowledgeUser) => {   2      this.data.knowledgeBaseUser = knowledgeUser;         this.trigger(this.data);       });5��