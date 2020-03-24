class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :likes
  has_many :contents, through: :likes
end
