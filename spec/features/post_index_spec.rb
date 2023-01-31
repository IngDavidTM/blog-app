require 'rails_helper'
RSpec.describe Post, type: :system do
  describe 'post index user page' do
    it 'I can see the profile picture for each user.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_xpath("//img[@src='https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80']")
    end

    it 'I can see the users username.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content(user.name)
    end

    it 'I can see the number of posts each user has written.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content(user.posts_counter)
    end

    it 'I can see a posts title.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content(user.posts.first.title)
    end

    it 'I can see some of the posts body.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content(user.posts.first.text)
    end

    it 'I can see the first comments on a post.' do
      user = User.includes(:posts, posts: %i[author comments]).first
      visit user_posts_path(user.posts.first.author_id)
      post = user.posts.first
      comment = post.comments.last
      expect(page).to have_content(comment.text)
    end

    it 'I can see how many comments a post has.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content(user.posts.first.comments_counter)
    end

    it 'I can see how many likes a post has.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content(user.posts.first.likes_counter)
    end

    it 'I can see a section for pagination if there are more posts than fit on the view.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      expect(page).to have_content('Pagination')
    end

    it 'When I click on a post, it redirects me to that posts show page.' do
      user = User.includes(:posts).first
      visit user_posts_path(user.posts.first.author_id)
      click_link user.posts.first.title
      expect(page).to have_current_path(user_post_path(user.posts.first.author_id, user.posts.first.id))
    end
  end
end
