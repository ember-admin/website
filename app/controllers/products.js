import TableViewController from 'ember-cli-admin/mixins/controllers/table-view';
import Ember from 'ember';
import SearchLogic from 'ember-cli-admin/dsl/search';

export default Ember.ObjectController.extend(TableViewController, {
  formAttributes: ['title','price'],
  sortFields: ['id', 'title', 'price'],

  companies: function(){
    return this.store.find('company');
  }.property(),
  users: function(){
    return this.store.find('user');
  }.property(),

  searchForm: (function() {
    return new SearchLogic().form(this.get('q'), function() {
      this.input('title');
      this.input('price', {type: 'number'});
    });
  }).property('q')
});