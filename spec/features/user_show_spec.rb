require 'rails_helper'
RSpec.describe User, type: :system do
  describe 'show user page' do
    it 'I can see the users profile picture.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      expect(page).to have_xpath("//img[@src='https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80']")
    end

    it 'I can see the users username.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      expect(page).to have_content(user.name)
    end

    it 'I can see the number of posts each user has written.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      expect(page).to have_content(user.posts_counter)
    end

    it 'I can see the users bio.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      expect(page).to have_content(user.bio)
    end

    it 'I can see the users first 3 posts.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      @posts = Post.where(author_id: 1).limit(3).order(created_at: :desc)
      @posts.each do |post|
        expect(page).to have_content(post.text)
      end
    end

    it 'I can see a button that lets me view all of a users posts.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      expect(page).to have_content('See all posts')
    end

    it 'When I click a users post, it redirects me to that posts show page.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      post_id = Post.last.id
      post_author = Post.last.author_id
      click_link user.posts.last.text
      expect(page).to have_current_path(user_post_path(post_author, post_id))
    end

    it 'When I click to see all posts, it redirects me to the users posts index page.' do
      user = User.includes(:posts).first
      visit user_path(user.posts.first.author_id)
      click_link 'See all posts'
      expect(page).to have_current_path(user_posts_path(user.posts.first.author_id))
    end
  end
end