require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) do
    User.new(
      name: 'Tom',
      photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
      bio: 'Teacher from Mexico.',
      posts_counter: 1
    )
  end

  let(:post) do
    Post.new(
      author: user,
      title: 'Hello',
      text: 'This is my first post',
      comments_counter: 2,
      likes_counter: 1
    )
  end

  let(:comment) do
    Comment.new(
      author: user,
      post:,
      text: 'Hi world'
    )
  end

  it 'comment should be valid with author and post' do
    expect(comment).to be_valid
  end

  it 'should be valid with a new text' do
    comment.text = 'first comment'
    expect(comment).to be_valid
  end

  it 'comments counter should be equal to 3' do
    comment.save
    expect(post.comments_counter).to eq(3)
  end

  it 'recent posts should return the last five posts' do
    expect(post.recent_comments.length).to be_between(0, 5)
  end
end
