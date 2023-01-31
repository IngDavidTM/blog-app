require 'rails_helper'

RSpec.describe Post, type: :system do
  describe 'show user page' do
    it 'I can see the posts title.' do
      user = User.includes(:posts).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      expect(page).to have_content(user.posts.first.title)
    end

    it 'I can see  who wrote the post.' do
      user = User.includes(:posts, posts: [:author]).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      expect(page).to have_content(user.posts.first.author.name)
    end

    it 'I can see how many comments it has.' do
      user = User.includes(:posts).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      expect(page).to have_content(user.posts.first.comments_counter)
    end

    it 'I can see how many likes it has.' do
      user = User.includes(:posts).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      expect(page).to have_content(user.posts.first.likes_counter)
    end

    it 'I can see the post body.' do
      user = User.includes(:posts).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      expect(page).to have_content(user.posts.first.text)
    end

    it 'I can see the username of each commentor.' do
      user = User.includes(:posts, posts: %i[author comments]).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      post = user.posts.first
      post.comments.each do |comment|
        expect(page).to have_content(comment.author.name)
      end
    end

    it 'I can see the comment each commentor left.' do
      user = User.includes(:posts, posts: %i[author comments]).first
      visit user_post_path(user.posts.first.author_id, user.posts.first.id)
      post = user.posts.first
      comment = post.comments.first
      comment_post = comment.author.name.concat(': ').concat(comment.text)
      expect(page).to have_content(comment_post)
    end
  end
end
