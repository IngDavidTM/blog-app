require 'rails_helper'

RSpec.describe Like, type: :model do
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

  let(:like) do
    Like.new(
      author: user,
      post:
    )
  end

  it 'like should be valid with author and post' do
    expect(like).to be_valid
  end

  it 'likes counter should be equal to 2' do
    like.save
    expect(post.likes_counter).to eq(2)
  end
end
