class CompanySerializer < ActiveModel::Serializer
  attributes :id, :title, :logo, :updated_at, :created_at
  embed :ids, include: true
end