import Asset from 'ember-cli-admin/logics/asset';

var avatar = Asset.extend({
  type: DS.attr('string', {defaultValue: 'Avatar'})
});

export default avatar;