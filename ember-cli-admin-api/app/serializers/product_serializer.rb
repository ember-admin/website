class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :updated_at, :created_at
  embed :ids, include: true
end