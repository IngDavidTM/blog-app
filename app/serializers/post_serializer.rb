class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text

  belongs_to :user
end
