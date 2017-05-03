Vim�UnDo� m�r/�EF��C�0����\G;�@2���P�4   �           .                       X�2    _�                             ����                                                                                                                                                                                                                                                                                                                                                             W�4_     �                ?    it ('calls ThreadsActions.setThreadCategory', function () {   1      spyOn(ThreadsActions, 'setThreadCategory');   }      var wrapper = enzyme.shallow(<ThreadCategorization thread={{attributes: {id: 2}}} value="booking" disabled={false} />);   D      var categoryComposer = wrapper.find(CategoryComposer).first();   3      categoryComposer.props().onChange('booking');   R      expect(ThreadsActions.setThreadCategory).toHaveBeenCalledWith(2, 'booking');       });5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       W�4`    �                    1  describe('_handleCategoryChange', function () {     });5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       W�4�     �                  var enzyme = require('enzyme');   var React = require('react');   -var Radio = require('react-bootstrap').Radio;       Wvar ThreadsActions = require('../../../app/client/javascripts/actions/ThreadsActions');   fvar ThreadCategorization = require('../../../app/client/javascripts/components/ThreadCategorization');   ^var CategoryComposer = require('../../../app/client/javascripts/components/CategoryComposer');       .describe('ThreadCategorization', function () {   D  it ('renders a CategoryComposer with correct props', function () {   m    var wrapper = enzyme.shallow(<ThreadCategorization thread={{id: 2}} value="booking" disabled={false} />);   =    expect(wrapper.find(CategoryComposer).length).toEqual(1);   B    var categoryComposer = wrapper.find(CategoryComposer).first();   =    expect(categoryComposer.props().disabled).toEqual(false);   >    expect(categoryComposer.props().value).toEqual('booking');   G    expect(categoryComposer.props().onlyDisplayOptions).toEqual(false);     });       0  describe('when disabled is true', function() {   ?    it ('does not render clickable category name', function() {   #      var wrapper = enzyme.shallow(   Q        <ThreadCategorization thread={{id: 2}} value="booking" disabled={true} />         );   G      expect(wrapper.find('div.category-section a').length).toEqual(0);       });     });   });5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                 V       W�4�    �   �   �                  <CategoryComposer�   �   �          ?      wrapper = enzyme.shallow(<CategoryComposer {...props} />)�   �   �          c        .shallow(<CategoryComposer onChange={this.onChangeFunc} value="booking" disabled={false}/>)�   �   �          l          this.CategoryComposer = ReactDOM.render(<CategoryComposer {...this.props} />, this.$container[0]);�   �   �          z        var findAnswerDisplay = TestUtils.findRenderedDOMComponentWithClass(this.CategoryComposer, 'find-answer-display');�   �   �          z        var findAnswerDisplay = TestUtils.findRenderedDOMComponentWithClass(this.CategoryComposer, 'find-answer-display');�   �   �          z        var findAnswerDisplay = TestUtils.findRenderedDOMComponentWithClass(this.CategoryComposer, 'find-answer-display');�   y   {          j        this.CategoryComposer = ReactDOM.render(<CategoryComposer {...this.props} />, this.$container[0]);�   X   Z          G        this.wrapper = enzyme.shallow(<CategoryComposer {...props} />);�   E   G          G        this.wrapper = enzyme.shallow(<CategoryComposer {...props} />);�   $   &          E      this.wrapper = enzyme.shallow(<CategoryComposer {...props} />);�                X    var wrapper = enzyme.shallow(<CategoryComposer value="booking" disabled={false} />);�                X    var wrapper = enzyme.shallow(<CategoryComposer value="booking" disabled={false} />);�                *describe('CategoryComposer', function () {�   	             ^var CategoryComposer = require('../../../app/client/javascripts/components/CategoryComposer');5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       W�5     �                -var Radio = require('react-bootstrap').Radio;5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       W�5     �                L  it ('renders radio inputs when current category is clicked', function () {   \    var wrapper = enzyme.shallow(<ThreadCategorization value="booking" disabled={false} />);   =    wrapper.find('div.category-section a').simulate('click');   J    expect(wrapper.find(Radio).length).toEqual(_.keys(categories).length);     });    5�_�      	             �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        W�5     �   �   �          ;  describe('when showCategoryChooser is true', function() {       var wrapper;       beforeEach(function() {   )      this.onChangeFunc = function () {};   "      spyOn(this, 'onChangeFunc');         wrapper = enzyme   g        .shallow(<ThreadCategorization onChange={this.onChangeFunc} value="booking" disabled={false}/>)   /        .setState({showCategoryChooser: true});       });       ;    it('calls this.props.onChange on change', function () {   K      var firstInput = wrapper.find(Radio).first().shallow().find('input');   $      firstInput.simulate('change');   O      expect(this.onChangeFunc).toHaveBeenCalledWith(firstInput.prop('value'));       });       T    it('doesnt call this.props.onChange if click on current category', function () {   d      var firstInput = wrapper.find(Radio).find({value: "booking"}).first().shallow().find('input');   $      firstInput.simulate('change');   6      expect(this.onChangeFunc).not.toHaveBeenCalled()       });     });    5�_�      
           	   �        ����                                                                                                                                                                                                                                                                                                                            �          �           V       W�5%     �   �   �          :  describe('when onlyDisplayOptions is true', function() {       var wrapper;       beforeEach(function() {   P      var props = {value: "booking", disabled: false, onlyDisplayOptions: true};   C      wrapper = enzyme.shallow(<ThreadCategorization {...props} />)       });       8    it('does not render current category', function () {   G      expect(wrapper.find('div.category-section a').length).toEqual(0);       });       +    it('renders radio inputs', function() {   L      expect(wrapper.find(Radio).length).toEqual(_.keys(categories).length);       });     });    5�_�   	              
   �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5.     �   �   �          ;  describe('when onlyDisplayCategory is true', function() {   V    it ('does not render radio inputs when current category is clicked', function () {   #      var wrapper = enzyme.shallow(           <ThreadCategorization             value="booking"   $          onlyDisplayCategory={true}             disabled={false} />         );   ?      wrapper.find('div.category-section a').simulate('click');   4      expect(wrapper.find(Radio).length).toEqual(0);       });     });5�_�   
                 �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5/    �   �   �           5�_�                       G    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �         �      \    var wrapper = enzyme.shallow(<ThreadCategorization value="booking" disabled={false} />);5�_�                           ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �                        disabled: false,5�_�                           ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�    �                "        onlyDisplayOptions: false,5�_�                    ;   
    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �   :   ;          $          onlyDisplayOptions: false,5�_�                    :       ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �   9   :                    disabled: false,5�_�                    L       ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �   K   L          $          onlyDisplayOptions: false,5�_�                    K       ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �   J   K                    disabled: false,5�_�                    j   
    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�     �   i   j          $          onlyDisplayOptions: false,5�_�                    i       ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�5�    �   h   i                    disabled: false,5�_�                       %    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�:~     �         �      O  it ('renders category section with toggleable current category', function() {5�_�                       .    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�:�    �         �      X    expect(wrapper.find('div.category-section a').text()).toEqual("Book Appointment +");5�_�                       2    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�:�    �         �      [    expect(wrapper.find('div.category-section span').text()).toEqual("Book Appointment +");5�_�                       W    ����                                                                                                                                                                                                                                                                                                                            �          �          V       W�:�   	 �         �      l    expect(wrapper.find('div.category-section span.current-category').text()).toEqual("Book Appointment +");5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�-     �         �    �         �    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�-   
 �                3var TestUtils = require("react-addons-test-utils");5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�0     �                Gvar categories = require('../../../app/client/config/categories.json');5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             X�1    �                 var _ = require('underscore');5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �           V   $    W�5     �   �   �        5��