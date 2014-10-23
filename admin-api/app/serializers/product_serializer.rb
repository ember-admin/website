class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :updated_at, :created_at
  has_one :company, include: true
  has_one :user, include: true
  embed :ids, include: false
end