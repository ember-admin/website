import TableViewController from 'ember-cli-admin/mixins/controllers/table-view';
import Ember from 'ember';

export default Ember.ObjectController.extend(TableViewController, {
  formAttributes: ['title','price'],
  sortFields: ['id', 'title', 'price'],

  companies: function(){
    return this.store.find('company');
  }.property(),
  users: function(){
    return this.store.find('user');
  }.property()
});