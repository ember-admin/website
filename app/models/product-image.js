import Asset from 'ember-cli-admin/logics/asset';

export default Asset.extend({
  type: DS.attr('string', {defaultValue: 'ProductImage'})
});