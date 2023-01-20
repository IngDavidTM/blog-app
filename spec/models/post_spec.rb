require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(
      name: 'Tom',
      photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
      bio: 'Teacher from Mexico.',
      posts_counter: 1
    )
  end

  let(:subject) do
    Post.new(
      author: user,
      title: 'Hello',
      text: 'This is my first post',
      comments_counter: 2,
      likes_counter: 1
    )
  end

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title should be less than 250 characters' do
    expect(subject.title).to be_a(String)
    expect(subject.title.length).to be <= 250
  end

  it 'comments counter should be an integer' do
    subject.comments_counter = 'not-numeric'
    expect(subject).to_not be_valid
  end

  it 'likes counter should be an integer' do
    subject.likes_counter = 'not-numeric'
    expect(subject).to_not be_valid
  end

  it 'comments should be greater than or equal to 0' do
    subject.comments_counter = -4
    expect(subject).to_not be_valid
  end

  it 'likes should be greater than or equal to 0' do
    subject.likes_counter = -2
    expect(subject).to_not be_valid
  end
end
