import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  logo: DS.attr('string'),
  products: DS.hasMany('product'),
  updated_at: DS.attr('string'),
  created_at: DS.attr('string')
});