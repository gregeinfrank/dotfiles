Vim�UnDo� ����<C�x��r��7��>�m!c.�O�L���   M                                  W@nI    _�                     7       ����                                                                                                                                                                                                                                                                                                                                                             W>�     �   7   9   H    �   7   8   H    5�_�                    8   <    ����                                                                                                                                                                                                                                                                                                                                                             W>      �   7   9   I      X          <div style={this.styles.row.countsCol} className="counts-col">Msg Counts</div>5�_�                    8   H    ����                                                                                                                                                                                                                                                                                                                                                             W>    �   7   9   I      X          <div style={this.styles.row.countsCol} className="agents-col">Msg Counts</div>5�_�                    *        ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��     �   *   /   I    �   *   +   I    5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��    �   *   ,   M            countsCol: {5�_�                    <   &    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��     �   <   >   M    �   <   =   M    5�_�                    =   &    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��     �   <   >   N      ^          <div style={this.styles.row.countsCol} className="agents-col">Agents on Thread</div>5�_�      	              =   F    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��    �   <   >   N      \          <div style={this.styles.row.sortCol} className="agents-col">Agents on Thread</div>5�_�      
           	   ,       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��    �   +   -   N              flex: ".4 1 20px",5�_�   	              
   ,       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�    �   +   -   N              flex: ".4 1 100px",5�_�   
                 =   K    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��    �   <   >   N      W          <div style={this.styles.row.sortCol} className="agents-col">Sort params</div>5�_�                    9   Y    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�|   
 �   8   :   N      v          <div style={this.styles.row.newestMsgCol} className="newest-msg-col">Newest Msg (Click to View & Lock)</div>5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�6     �   ?   A   N      ?          _.map(groupedThreadsByUser, (userThreads, index) => {5�_�                    @   %    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�;     �   ?   A   N      =          _.map(this.props.threads, (userThreads, index) => {5�_�                    @   +    ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�=     �   ?   A   N      9          _.map(this.props.threads, (threads, index) => {5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�C    �   C   E   N      #              threads={userThreads}5�_�                    B       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��     �   A   C   N                    key={index}5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��     �   D   F   O                    �   D   F   N    5�_�                    E       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��    �   D   F   O                    previeous5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��     �   C   E   O                     threads={[thread]}5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?��    �   C   E   O                    thread={[thread]}�   D   E   O    5�_�                    D        ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�`     �               O   var _ = require('underscore');   var React = require('react');       .var QueueUtils = require('../lib/QueueUtils');   3var UserThreadsList = require('./UserThreadsList');       &var ThreadsQueue = React.createClass({     propTypes: {   #    threads: React.PropTypes.array,   .    maxThreadsForUser: React.PropTypes.number,     },         styles: {       queue: {         display: "flex",         flexDirection: "column",       },   
    row: {         display: "flex",         flexDirection: "row",         padding: "5px 20px",   &      justifyContent: "space-between",         userCol: {           flex: ".5 1 20px",           padding: "5px",         },         respondByCol: {           flex: "2.1 1 20px",           padding: "5px 10px",         },         newestMsgCol: {           flex: "1.9 1 20px",           padding: "5px 10px",         },        threadNoteCol: {           flex: "1.6 1 20px",           padding: "5px 10px",         },         countsCol: {           flex: ".4 1 20px",           padding: "5px 10px",         },         sortCol: {           flex: ".4 1 200px",           padding: "5px 10px",         },       },     },         render: function () {   Y    var groupedThreadsByUser = QueueUtils.groupThreadsWithoutSorting(this.props.threads);       return (   >     <div className="threads-queue" style={this.styles.queue}>   @        <div className="column-headers" style={this.styles.row}>   N          <div style={this.styles.row.userCol} className="user-col">User</div>   _          <div style={this.styles.row.respondByCol} className="respond-by-col">Respond By</div>   _          <div style={this.styles.row.newestMsgCol} className="newest-msg-col">Newest Msg</div>   o          <div style={this.styles.row.threadNoteCol} className="thread-note-col">Checklist & Thread Notes</div>   X          <div style={this.styles.row.countsCol} className="counts-col">Msg Counts</div>   ^          <div style={this.styles.row.countsCol} className="agents-col">Agents on Thread</div>   Y          <div style={this.styles.row.sortCol} className="agents-col">Sort features</div>           </div>   	        {   8          _.map(this.props.threads, (thread, index) => {   #            return <UserThreadsList                 key={thread.id}   (              rowStyle={this.styles.row}                 thread={thread}   O              previousThread={index > 0 ? this.props.threads[index - 1] : null}   7              maxThreads={this.props.maxThreadsForUser}               />;             })   	        }         </div>       );     },   });       module.exports = ThreadsQueue;5�_�                    3       ����                                                                                                                                                                                                                                                                                                                            '          *          V       W?�o    �   2   3          Y    var groupedThreadsByUser = QueueUtils.groupThreadsWithoutSorting(this.props.threads);5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             W@nH    �                .var QueueUtils = require('../lib/QueueUtils');5��