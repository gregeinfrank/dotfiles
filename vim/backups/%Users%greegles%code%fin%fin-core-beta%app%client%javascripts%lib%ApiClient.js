Vim�UnDo� �ǵ��q��|p�Ϊ�-��HP���֠e���+m  �                                   Xe�    _�                    E        ����                                                                                                                                                                                                                                                                                                                                                             Xe�     �  D  E              const options = {   ?      url: `/api/entries/${entryId}/attributes/${attributeId}`,         method: 'PUT',   &      contentType: 'application/json',         data: JSON.stringify({           schema_id: schemaId,           user_id: userId,           value,           target,           role,   	      }),       };   !    return this.callApi(options);5�_�                   C        ����                                                                                                                                                                                                                                                                                                                           E         C           V       Xe�    �  B  C              ]  saveEntryAttribute: function(entryId, role, attributeId, schemaId, userId, value, target) {     },5�_�                   E        ����                                                                                                                                                                                                                                                                                                                           C         C           V       Xe�     �  D  E              const options = {   0      url: `/api/entries/${entryId}/attributes`,         method: 'POST',   &      contentType: 'application/json',         data: JSON.stringify({           schema_id: schemaId,           user_id: userId,           value,           target,           role,   	      }),       };   !    return this.callApi(options);5�_�                    C        ����                                                                                                                                                                                                                                                                                                                           E         C           V       Xe�    �  B  C              R  createEntryAttribute: function(entryId, role, schemaId, userId, value, target) {     },5��