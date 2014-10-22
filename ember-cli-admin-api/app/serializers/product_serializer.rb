class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :company_id, :user_id, :updated_at, :created_at
  embed :ids, include: true
end