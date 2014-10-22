class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :avatar, :updated_at, :created_at
  embed :ids, include: true
end