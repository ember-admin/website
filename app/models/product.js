import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  price: DS.attr('string'),
  company: DS.belongsTo('company'),
  user: DS.belongsTo('user'),
  updated_at: DS.attr('string'),
  created_at: DS.attr('string')
});