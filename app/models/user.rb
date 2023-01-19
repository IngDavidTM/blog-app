class User < ApplicationRecord
  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true }
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }
  has_many :comments, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id

  def recent_posts
    posts.limit(3).order(created_at: :desc)
  end
end
