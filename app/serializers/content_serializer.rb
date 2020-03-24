class ContentSerializer < ActiveModel::Serializer
  attributes :id, :name, :source, :description, :image, :kind
  has_many :likes
end
