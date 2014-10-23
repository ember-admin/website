import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  price: DS.attr('number'),
  company: DS.belongsTo('company'),
  user: DS.belongsTo('user'),
  product_image:  DS.belongsTo('product_image', {async: true}),
  product_images: DS.hasMany('product_image', {async: true}),
  updated_at: DS.attr('date'),
  created_at: DS.attr('date'),

  fileuploads: ["product_image", "product_images"]
});