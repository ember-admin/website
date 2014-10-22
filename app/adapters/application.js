import DS from 'ember-data';

var adapter = DS.ActiveModelAdapter.extend({
  namespace: 'ember_cli_admin/api/v1'
});

export default adapter;