Vim�UnDo� @҅��跣�����(���Am��jJ�y:~  �                  (       (   (   (    W�	    _�                    +       ����                                                                                                                                                                                                                                                                                                                                                             W�w     �  *  ,  �                })5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             W�y    �      �                })5�_�                    |        ����                                                                                                                                                                                                                                                                                                                                                             W��    �   {   }  �      %describe('MessagesList', function() {5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             W��     �   �             3          this.MessagesList.displayItem(this.item);5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             W��     �      �    �      �    5�_�                   
   
    ����                                                                                                                                                                                                                                                                                                                                                             W��     �  
    �    �  
    �    5�_�                      
    ����                                                                                                                                                                                                                                                                                                                                                             W��     �      �    �      �    5�_�      	                (    ����                                                                                                                                                                                                                                                                                                                                                             W��     �      �      7        it('renders the hide toggle span', function() {5�_�      
           	     A    ����                                                                                                                                                                                                                                                                                                                                                             W��     �      �      
          �      �    5�_�   	              
         ����                                                                                                                                                                                                                                                                                                                                                             W�    �      �      Q        it('renders the hide toggle span if current agent has lock', function() {5�_�   
                   	    ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�'     �    #  �    �      �    5�_�                          ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�(     �      �    �      �    5�_�                          ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�*     �      �      R        fit('renders the hide toggle span if current agent has lock', function() {5�_�                      W    ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�;     �      �      ]          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(true);5�_�                      
    ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�>     �      �      3          this.MessagesList.displayItem(this.item);5�_�                          ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�C     �      �    5�_�                           ����                                                                                                                                                                                                                                                                                                                              	         	       V   	    W�J     �      �       5�_�                           ����                                                                                                                                                                                                                                                                                                                              C      #          V   l    W�c    �              D          expect(React.createElement).toHaveBeenCalledWith('span', {   +            onClick: jasmine.any(Function),   %            className: 'fa fa-minus',   8            style: this.MessagesList.styles.proofToggle,               ref: undefined,             });5�_�                          ����                                                                                                                                                                                                                                                                                                                              C                V   l    W�z     �      �      R        fit('renders the hide toggle span if current agent has lock', function() {5�_�                          ����                                                                                                                                                                                                                                                                                                                              C                V   l    W�{     �      �      d        fit('does not render the hide toggle span if current agent does not have lock', function() {5�_�                  .       ����                                                                                                                                                                                                                                                                                                                              C                V   l    W��     �  .  0  �    �  .  /  �    5�_�                   .   (    ����                                                                                                                                                                                                                                                                                                                              C                V   l    W��     �  -  /  �      7        it('renders the show toggle span', function() {5�_�                   6   	    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �  6  <  �    �  6  7  �    5�_�                   7       ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �  6  8  �    �  7  8  �    5�_�                   8        ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �  7  9  �      c        it('does not render the hide toggle span if current agent does not have lock', function() {5�_�                   ;   R    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �  :  <  �      m          expect(TestUtils.scryRenderedDOMComponentsWithClass(displayItem, 'fa fa-minus').length).toEqual(0);5�_�                   $   
    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �  #  $          3          this.MessagesList.displayItem(this.item);5�_�                   &       ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��    �  &  (  �    �  &  '  �    5�_�      !             /        ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��    �  /  1  �    �  /  0  �    5�_�      "          !     ]    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �      �      h          expect(React.createElement).toHaveBeenCalledWith('div', {style: style}, undefined, undefined);5�_�   !   #           "  +   ]    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��   
 �  *  ,  �      h          expect(React.createElement).toHaveBeenCalledWith('div', {style: style}, undefined, undefined);5�_�   "   $           #         ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �      �    5�_�   #   %           $     
    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �      �      3          this.MessagesList.displayItem(this.item);5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��     �      �       5�_�   %   '           &     
    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��    �                        let div = 5�_�   &   (           '   |        ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W��    �   {   }  �      &fdescribe('MessagesList', function() {5�_�   '               (           ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W�     �              �   3var proxyquire = require('proxyquireify')(require);   var React = require("react");   var $ = require("jquery");   $var ReactDOM = require('react-dom');   var _ = require('underscore');   3var TestUtils = require("react-addons-test-utils");       dvar EmailMessageDisplay = require('../../../app/client/javascripts/components/EmailMessageDisplay');   Zvar MessageDisplay = require('../../../app/client/javascripts/components/MessageDisplay');   Rvar EmailModal = require('../../../app/client/javascripts/components/EmailModal');   Wvar ThreadsActions = require('../../../app/client/javascripts/actions/ThreadsActions');   Wvar EntriesActions = require('../../../app/client/javascripts/actions/EntriesActions');   Zvar MessagesList = proxyquire('../../../app/client/javascripts/components/MessagesList', {   /  './EmailMessageDisplay': EmailMessageDisplay,     './EmailModal': EmailModal,   %  './MessageDisplay': MessageDisplay,   .  '../actions/ThreadsActions': ThreadsActions,   .  '../actions/EntriesActions': EntriesActions,   });   Hvar Message = require('../../../app/client/javascripts/models/Message');   Dvar Entry = require('../../../app/client/javascripts/models/Entry');   Fvar Thread = require('../../../app/client/javascripts/models/Thread');   ?var colors = require('../../../app/client/config/colors.json');   var mockMessages = [     {   '    created_at: "2015-01-01T01:00:00Z",   c    thread: {id: 1, user: {id: 100}, title: 'watch aguirre', last_done_at: "2015-01-01T00:00:00Z"},   
    id: 1,   !    user: {id: 100, name: "Sid"},       text: 'watch aguirre',       lat: "1",       lon: "1"     },     {   '    created_at: "2015-01-02T00:00:00Z",   I    thread: {id: 2, user: {id: 100, name: 'joe'}, title: 'ping ali mac'},   
    id: 2,       medium: "agent_task",       agent: {id: 1},       text: 'ping ali mac',       lat: "0",       lon: "0"     },     {   '    created_at: "2015-01-03T00:00:00Z",   =    thread: {id: 1, user: {id: 100}, title: 'watch aguirre'},   
    id: 6,       text: 'herzog',       medium: 'email',   �    inbound_emails: [{from: "herzog@gmail.com", to: "wenders@yahoo.com", cc: "luis@bunuel.com", dkim: "{@gmail.com : fail}", verified: false}],   1    local_time: "2015-07-21T14:48:04.144-0400EDT"     },     {   '    created_at: "2015-01-04T00:00:00Z",   =    thread: {id: 7, user: {id: 101}, title: 'neverminds...'},   
    id: 8,   5    text: 'neverminds andreas henneberg remix helms',   1    local_time: "2015-07-21T14:48:04.144-0700PDT"     },     {   '    created_at: "2015-01-05T00:00:00Z",   6    thread: {id: 9, user: {id: 101}, title: 'image!'},   
    id: 9,       text: 'random image',   2    local_time: "2015-07-21T14:48:04.147-0700PDT",       mediaAttachment: {         id: 1,   N      url: "https://marathalbt.files.wordpress.com/2014/10/fin_finale_ny.jpg",         transcription_status: 0,         media_type: "image/jpeg",   Y      temp_public_url: "https://marathalbt.files.wordpress.com/2014/10/fin_finale_ny.jpg"       }     },     {   '    created_at: "2015-01-06T00:00:00Z",   7    thread: {id: 10, user: {id: 101}, title: 'audio!'},       id: 10,       text: 'random audio',   2    local_time: "2015-07-21T14:48:04.149-0700PDT",       mediaAttachment: {         id: 2,   H      url: "https://s3.amazonaws.com/ventures.fin.assets.dev/hello.m4a",         transcription_status: 0,         media_type: "audio/mp4",   S      temp_public_url: "https://s3.amazonaws.com/ventures.fin.assets.dev/hello.m4a"       }     },     {   '    created_at: "2015-01-01T00:00:00Z",   d    thread: {id: 11, user: {id: 100}, title: 'watch aguirre', last_done_at: "2015-01-01T01:00:00Z"},       id: 11,       text: 'watch aguirre',       lat: "1",       lon: "1",   !    user: {id: 1, name: "steve"},       agent: {id: 1}     },     {   '    created_at: "2015-01-01T00:00:01Z",   G    thread: {id: 12, user: {id: 100}, title: 'mock voicemail message'},       id: 11,       phone: "5555555",   !    user: {id: 1, name: "steve"},       mediaAttachment: {         id: 3,   )      url: "https://api.twilio.com/blah",         transcription_status: 0,         media_type: "twilio_vm",   4      temp_public_url: "https://api.twilio.com/blah"       }     },     {   '    created_at: "2015-01-02T00:00:00Z",   I    thread: {id: 2, user: {id: 100, name: 'joe'}, title: 'ping ali mac'},       id: 12,   )    medium: "bounced_email_notification",       agent: {id: 1},       text: 'email bounced',       lat: "0",       lon: "0"     },   ];       %describe('MessagesList', function() {   H  let messages = _.map(mockMessages, (message) => new Message(message));         beforeEach(function() {   9    this.mockThread = new Thread(mockMessages[0].thread);       this.entryId = 1242;       this.mockThread.actions = [   r      {created_at: "2015-03-01T00:00:00Z", action: "Fin added a Reminder", hidden: false, entry_id: this.entryId},   ^      {created_at: "2015-03-02T00:00:00Z", action: "Remember", hidden: false, entry_id: null},       ];   )    this.mockText = mockMessages[0].text;       this.allowEdit = true;   )    spyOn(EntriesActions, 'selectEntry');       (    this.MessagesList = ReactDOM.render(         <MessagesList           messages={messages}            thread={this.mockThread}   "        allowEdit={this.allowEdit}         />, this.$container[0]);   F      this.$messagesList = $(ReactDOM.findDOMNode(this.MessagesList));     });       1  it('renders the list of messages', function() {   ?    expect(this.$messagesList.text()).toContain(this.mockText);     });       U  it('calls EntriesActions.selectEntry on click of item with entry id', function () {   j    let workProofs = TestUtils.scryRenderedDOMComponentsWithClass(this.MessagesList, 'work-proof-action');   ,    TestUtils.Simulate.click(workProofs[0]);   :    expect(EntriesActions.selectEntry).toHaveBeenCalled();   a    expect(EntriesActions.selectEntry.calls.first().args[0].attributes.id).toEqual(this.entryId);   q    expect(EntriesActions.selectEntry.calls.first().args[0].attributes.user.id).toEqual(this.mockThread.user.id);     });       `  it('does not call EntriesActions.selectEntry on click of item with no entry id', function () {   j    let workProofs = TestUtils.scryRenderedDOMComponentsWithClass(this.MessagesList, 'work-proof-action');   ,    TestUtils.Simulate.click(workProofs[1]);   >    expect(EntriesActions.selectEntry).not.toHaveBeenCalled();     });       +  it('renders image messages', function() {   =    expect(this.$messagesList.find("img").length).toEqual(1);     });       +  it('renders audio messages', function() {   ?    expect(this.$messagesList.find("audio").length).toEqual(2);     });       /  it('disallows edits by default', function() {   D    expect(MessagesList.getDefaultProps().allowEdit).toEqual(false);     });       )  describe('isNewSinceDone', function() {   ^    it('returns true if the message was created before the threads last_done_at', function() {   J      expect(this.MessagesList.isNewSinceDone(messages[0])).toEqual(true);       });       A    it('returns true if thread has no last_done_at', function() {   J      expect(this.MessagesList.isNewSinceDone(messages[1])).toEqual(true);       });       c    it('returns false if the message was not created before the threads last_done_at', function() {   K      expect(this.MessagesList.isNewSinceDone(messages[6])).toEqual(false);       });     });       &  describe('displayItem', function() {       beforeEach(function() {   $      spyOn(React, 'createElement');       });       M    it('uses an email message display if message is from email', function() {   !      this.message = messages[2];   8      this.MessagesList.displayItem(this.message, null);   R      expect(React.createElement).toHaveCreatedReactElement(EmailMessageDisplay, {           message: this.message,           messages: messages,           selected: false,   *        onFwdClick: jasmine.any(Function),   ,        onReplyClick: jasmine.any(Function),            showReplyOptions: false,           ref: null,   	      });       });       M    it('uses a message display if the message is not an email', function () {   !      this.message = messages[0];   8      this.MessagesList.displayItem(this.message, null);   M      expect(React.createElement).toHaveCreatedReactElement(MessageDisplay, {           message: this.message,            thread: this.mockThread,   "        allowEdit: this.allowEdit,           ref: null,   	      });       });       ]    it('uses a message display if the message is a bounced email notification', function () {   !      this.message = messages[8];   8      this.MessagesList.displayItem(this.message, null);   M      expect(React.createElement).toHaveCreatedReactElement(MessageDisplay, {           message: this.message,            thread: this.mockThread,   "        allowEdit: this.allowEdit,           ref: null,   	      });       0      it('passes the ref if given', function() {   #        this.message = messages[6];   C        this.MessagesList.displayItem(this.message, 'firstUnread');       O        expect(React.createElement).toHaveCreatedReactElement(MessageDisplay, {              message: this.message,   "          thread: this.mockThread,   $          allowEdit: this.allowEdit,             ref: 'firstUnread',           });   	      });       })       W    describe('when the item is new since the thread was last marked done', function() {   (      it('applies a style', function() {   #        this.message = messages[0];   4        this.MessagesList.displayItem(this.message);   {        expect(React.createElement).toHaveBeenCalledWith('div', {style: this.MessagesList.styles.newSinceDone}, undefined);   	      });       });       ;    describe('when the item is a work proof', function () {   <      describe('when the action is not hidden', function() {            beforeEach(function () {   j          this.item = {created_at: "2015-03-01T00:00:00Z", action: "Fin added a Reminder", hidden: false};           });       @        it('renders the proof with correct style', function () {   E          let displayItem = this.MessagesList.displayItem(this.item);   9          let style = this.MessagesList.styles.workProof;             style.opacity = 1;   $          style.textDecoration = "";   c          expect(React.createElement).toHaveBeenCalledWith('div', {style: style}, undefined, null);           });       =        it('renders the proof string in a span', function() {   3          this.MessagesList.displayItem(this.item);   �          expect(React.createElement).toHaveBeenCalledWith('span', {className: 'work-proof-action', style: {cursor: 'pointer'}, onClick: jasmine.any(Function)}, this.item.action, ' ', null);           });       Q        it('renders the hide toggle span if current agent has lock', function() {   ]          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(true);   3          this.MessagesList.displayItem(this.item);   D          expect(React.createElement).toHaveBeenCalledWith('span', {   +            onClick: jasmine.any(Function),   %            className: 'fa fa-minus',   8            style: this.MessagesList.styles.proofToggle,               ref: undefined,             });           });       c        it('does not render the hide toggle span if current agent does not have lock', function() {   ^          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(false);   E          let displayItem = this.MessagesList.displayItem(this.item);   m          expect(TestUtils.scryRenderedDOMComponentsWithClass(displayItem, 'fa fa-minus').length).toEqual(0);           });   	      });       8      describe('when the action is hidden', function() {            beforeEach(function () {   i          this.item = {created_at: "2015-03-01T00:00:00Z", action: "Fin added a Reminder", hidden: true};           });       R        it('when the action is hidden, has opacity and line-through', function() {   3          this.MessagesList.displayItem(this.item);   9          let style = this.MessagesList.styles.workProof;             style.opacity = 0.6;   0          style.textDecoration = "line-through";   c          expect(React.createElement).toHaveBeenCalledWith('div', {style: style}, undefined, null);           });       Q        it('renders the show toggle span if current agent has lock', function() {   ]          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(true);   3          this.MessagesList.displayItem(this.item);   D          expect(React.createElement).toHaveBeenCalledWith('span', {   +            onClick: jasmine.any(Function),   $            className: 'fa fa-plus',   8            style: this.MessagesList.styles.proofToggle,               ref: undefined,             });           });       c        it('does not render the show toggle span if current agent does not have lock', function() {   ^          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(false);   E          let displayItem = this.MessagesList.displayItem(this.item);   l          expect(TestUtils.scryRenderedDOMComponentsWithClass(displayItem, 'fa fa-plus').length).toEqual(0);           });   	      });       });       I    it('returns an li with the key, classname, and display', function() {   !      this.message = messages[0];   2      this.MessagesList.displayItem(this.message);   >      expect(React.createElement).toHaveBeenCalledWith('li', {   M        key: this.message.id.toString() + this.message.created_at.toString(),   ;        className: this.MessagesList.liClass(this.message),         }, undefined);       });     });       1  describe('handleProofToggleClick', function() {       beforeEach(function() {   /      spyOn(ThreadsActions, 'unhideWorkProof');   -      spyOn(ThreadsActions, 'hideWorkProof');       });       C    it('calls hideWorkProof when proof is not hidden', function() {   .      this.workProof = {id: 4, hidden: false};   ?      this.MessagesList.handleProofToggleClick(this.workProof);   d      expect(ThreadsActions.hideWorkProof).toHaveBeenCalledWith(this.workProof.id, this.mockThread);       });       A    it('calls unhideWorkProof when proof is hidden', function() {   -      this.workProof = {id: 4, hidden: true};   ?      this.MessagesList.handleProofToggleClick(this.workProof);   f      expect(ThreadsActions.unhideWorkProof).toHaveBeenCalledWith(this.workProof.id, this.mockThread);       });     });       ,  describe('sorting the items', function() {   *    it('sorts by created_at', function() {   7      let list = this.MessagesList.sortItems(messages);   3      expect(list.length).toEqual(messages.length);   4      let createDates = _.pluck(list, 'created_at');   v      expect(createDates).toEqual(_.clone(createDates).sort((a, b) => new Date(a).getTime() - new Date(b).getTime()));       });       ?    it('reverses if the newestAtTop prop is true', function() {   *      this.MessagesList = ReactDOM.render(           <MessagesList             messages={messages}   "          thread={this.mockThread}             newestAtTop={true}            />, this.$container[0]);   9        let list = this.MessagesList.sortItems(messages);   5        expect(list.length).toEqual(messages.length);   6        let createDates = _.pluck(list, 'created_at');   �        expect(createDates).toEqual(_.clone(createDates).sort((a, b) => new Date(a).getTime() - new Date(b).getTime()).reverse());       });       B    it('calls with the messages and thread.actions', function () {   >      spyOn(this.MessagesList, 'sortItems').and.callThrough();   u      this.mockThread.actions = [{created_at: "2016-03-01T00:00:00Z", action: "Fin called Comcast. You're welcome."}]   *      this.MessagesList = ReactDOM.render(           <MessagesList             messages={messages}   "          thread={this.mockThread}             newestAtTop={true}            />, this.$container[0]);   k        expect(this.MessagesList.sortItems).toHaveBeenCalledWith(messages.concat(this.mockThread.actions));       });     });       &  describe('firstUnread', function() {   i    it('finds the first message in the thread that is new since the thread was marked done', function() {   *      this.MessagesList = ReactDOM.render(           <MessagesList             messages={messages}   "          thread={this.mockThread}   *          scrollFirstUnreadIntoView={true}            />, this.$container[0]);   X      expect(this.MessagesList.firstUnread().attributes.id).toEqual(mockMessages[6].id);       });     });       4  describe('scrollFirstUnreadIntoView', function() {   �    it('calls scrollIntoViewIfNeeded on the firstUnread ref node if scrollFirstUnreadIntoView is true and the firstUnread ref exists', function() {   *      this.MessagesList = ReactDOM.render(           <MessagesList           messages={messages}            thread={this.mockThread}   (        scrollFirstUnreadIntoView={true}            />, this.$container[0]);   O        let refNode = ReactDOM.findDOMNode(this.MessagesList.refs.firstUnread);   1        spyOn(refNode, 'scrollIntoViewIfNeeded');   6        this.MessagesList.scrollFirstUnreadIntoView();   J        expect(refNode.scrollIntoViewIfNeeded).toHaveBeenCalledWith(true);       });       |    it('does not call scrollIntoViewIfNeeded on firstUnread ref node if scrollFirstUnreadIntoView is not true', function() {   *      this.MessagesList = ReactDOM.render(           <MessagesList           messages={messages}            thread={this.mockThread}   )        scrollFirstUnreadIntoView={false}            />, this.$container[0]);   O        let refNode = ReactDOM.findDOMNode(this.MessagesList.refs.firstUnread);   1        spyOn(refNode, 'scrollIntoViewIfNeeded');   6        this.MessagesList.scrollFirstUnreadIntoView();   F        expect(refNode.scrollIntoViewIfNeeded).not.toHaveBeenCalled();       });     });   });5�_�              !            ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W�n    �      �    �      �      ]          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(true);5�_�                     '   7    ����                                                                                                                                                                                                                                                                                                                              
         A       V   A    W�v   	 �  '  (  �    �  '  (  �      ]          spyOn(this.MessagesList.props.thread, 'currentAgentHasLock').and.returnValue(true);5�_�                          ����                                                                                                                                                                                                                                                                                                                              C                V   l    W�{     �      �      b        t('does not render the hide toggle span if current agent does not have lock', function() {5��