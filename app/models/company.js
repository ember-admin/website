import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  logo: DS.attr('string'),
  products: DS.hasMany('product', {async: true}),
  updated_at: DS.attr('date'),
  created_at: DS.attr('date')
});