class LikeSerializer < ActiveModel::Serializer
  attributes :id, :like, :user_id, :content_id
end
