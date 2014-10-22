class CompanySerializer < ActiveModel::Serializer
  # embed :ids, include: true

  attributes :id, :title, :logo, :updated_at, :created_at
end