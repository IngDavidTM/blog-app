class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_save :update_posts_counter

  def recent_comments
    comments.limit(5).includes(:author).order(created_at: :desc)
  end

  def decrement_posts_counter
    author.decrement!(:posts_counter)
  end

  private

  def update_posts_counter
    author.increment!(:posts_counter)
  end
end
