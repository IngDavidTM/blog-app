require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'post should be an integer' do
    subject.posts_counter = 'not-numeric'
    expect(subject).to_not be_valid
  end

  it 'post should be greater than or equal to 0' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'recent posts should return the last three posts' do
    expect(subject.recent_posts).to eq(subject.posts.last(3))
  end
end
