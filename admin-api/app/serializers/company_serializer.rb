class CompanySerializer < ActiveModel::Serializer
  attributes :id, :title, :logo, :lat, :long, :zoom, :updated_at, :created_at

  embed :ids, include: true

  has_many :products, include: false
end