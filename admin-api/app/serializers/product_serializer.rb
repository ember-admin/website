class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :updated_at, :created_at
  has_one :company, include: true
  has_one :user, include: true
  has_one :product_image
  has_many :product_images, include: false
  embed :ids, include: false
end