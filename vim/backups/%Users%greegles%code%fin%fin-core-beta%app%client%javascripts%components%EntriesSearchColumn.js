Vim�UnDo� �iQ������v���Db@C����ǧ^   *                                   X��2    _�                     I        ����                                                                                                                                                                                                                                                                                                                            K   +       I           V   +    X��     �   H   I              �          <EntryList className="global-entry-list" userId={this.state.dashboard.user.id} entries={otherSearchResults} style={{backgroundColor: colors.fin.purple1}}   �                     selectedEntryId={this.state.entries.selectedEntryId} isEntrySelectable={true} hiddenAttributes={['notes', 'link', 'unlink']} />5�_�                    *        ����                                                                                                                                                                                                                                                                                                                            >           *           V       X��    �   )   *                        <EntryList   '            className="user-entry-list"   1            userId={this.state.dashboard.user.id}   '            entries={userSearchResults}   @            selectedEntryId={this.state.entries.selectedEntryId}   $            isEntrySelectable={true}   :            hiddenAttributes={['notes', 'link', 'unlink']}   7            style={{backgroundColor: colors.fin.gray1}}             />                 <EntryList   %            className="kb-entry-list"   1            userId={this.state.dashboard.user.id}   %            entries={kbSearchResults}   @            selectedEntryId={this.state.entries.selectedEntryId}   $            isEntrySelectable={true}   :            hiddenAttributes={['notes', 'link', 'unlink']}   H            style={{backgroundColor: colors.black, color: colors.white}}             />    5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            #          !          V       X��     �       !          ?    var userSearchResults, kbSearchResults, otherSearchResults;   �    [userSearchResults, otherSearchResults] = _.partition(this.props.searchResults, (entry) => entry.attributes.user_id === this.state.dashboard.user.id);   l    [kbSearchResults, otherSearchResults] = _.partition(otherSearchResults, (entry) => entry.attributes.kb);5�_�                    !        ����                                                                                                                                                                                                                                                                                                                            !          !          V       X��    �       !           5�_�                            ����                                                                                                                                                                                                                                                                                                                            !          !          V       X��     �                ,    Reflux.connect(EntriesStore, 'entries'),5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V       X��     �                1    Reflux.connect(ThreadsStore, 'threadsStore'),5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                V       X��     �   
             5var ThreadsStore = require('../stores/ThreadsStore');5�_�      
          	           ����                                                                                                                                                                                                                                                                                                                                                V       X��     �   
             =var TotalSearchStore = require('../stores/TotalSearchStore');5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                V       X��    �                4    Reflux.connect(TotalSearchStore, 'totalSearch'),5�_�   
                 	        ����                                                                                                                                                                                                                                                                                                                                                V       X��     �      	          5var EntriesStore = require('../stores/EntriesStore');5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       X��     �                'var EntryList = require('./EntryList');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        X��    �                var _ = require('underscore');   1var colors = require('../../config/colors.json');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X���     �                /var SearchFilters = require('./SearchFilters');5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             X���    �                          <SearchFilters />5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             X��(     �               ,   var React = require('react');   var Reflux = require('reflux');       +var UserTagList = require('./UserTagList');   9var DashboardStore = require('../stores/DashboardStore');   /var TagsStore = require('../stores/TagsStore');   Avar SearchFiltersStore = require('../stores/SearchFiltersStore');   4var ColumnStyles = require('../style/ColumnStyles');   <import EntrySearchResultList from './EntrySearchResultList';       -var EntriesSearchColumn = React.createClass({     mixins: [   &    Reflux.connect(TagsStore, 'tags'),   0    Reflux.connect(DashboardStore, 'dashboard'),   =    Reflux.connect(SearchFiltersStore, 'searchFiltersStore'),     ],          getInitialState: function () {   *    return {locationSearchVisible: false};     },         render: function () {       return (   0      <div style={ColumnStyles.fullFixedHeight}>   /        <div className="entries-search-column">   a          <UserTagList filter={this.state.tags.entryFilterTags.map(filterTag => filterTag.tag)}/>             {               /* !! Hack alert !!               *   C            *  UserDashbaord is hard to test when this is rendering   F            *  (have to pass a store through context or props, aren't)   R            *  TODO: (rc2) Fix UserDashboard specs and render this unconditionally               */   +           window.__runningJSTests ? null :   I            <EntrySearchResultList userId={DashboardStore.data.user.id}/>             }           </div>         </div>       );     },       });       %module.exports = EntriesSearchColumn;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X��1     �                Avar SearchFiltersStore = require('../stores/SearchFiltersStore');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X��1    �                =    Reflux.connect(SearchFiltersStore, 'searchFiltersStore'),5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       X��     �               5�_�              	             ����                                                                                                                                                                                                                                                                                                                                                V       X��     �              5��