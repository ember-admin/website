import TableViewController from 'ember-cli-admin/mixins/controllers/table-view';
import Ember from 'ember';

export default Ember.ObjectController.extend(TableViewController, {
  formAttributes: ['title', 'lat', 'long', 'zoom'],
  sortFields: ['id', 'title', 'lat', 'long', 'zoom']  
});