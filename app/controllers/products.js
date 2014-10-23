import TableViewController from 'ember-cli-admin/mixins/controllers/table-view';
import Ember from 'ember';

export default Ember.ObjectController.extend(TableViewController, {
  formAttributes: [{name: 'title'},{name: 'price'}],
  companies: function(){
    return this.store.find('company');
  }.property(),
  users: function(){
    return this.store.find('user');
  }.property()
});