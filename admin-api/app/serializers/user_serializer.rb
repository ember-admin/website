class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :updated_at, :created_at

  embed :ids, include: true
  has_one :avatar
  has_many :products, include: false
end