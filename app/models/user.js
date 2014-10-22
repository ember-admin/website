import DS from 'ember-data';

export default DS.Model.extend({
  email: DS.attr('string'),
  avatar: DS.attr('string'),
  updated_at: DS.attr('string'),
  created_at: DS.attr('string')
});