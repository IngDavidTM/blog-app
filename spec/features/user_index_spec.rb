require 'rails_helper'
RSpec.describe User, type: :system do
  describe 'index page' do
    it 'I can see the username of all other users.' do
      users = User.all
      visit users_path
      expect(page).to have_content(users.first.name)
    end

    it 'I can see the profile picture for each user.' do
      visit users_path
      expect(page).to have_xpath("//img[@src='https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80']")
    end

    it 'I can see the number of posts each user has written.' do
      users = User.all
      visit users_path
      expect(page).to have_content(users.first.posts_counter)
    end

    it 'When I click on a user, I am redirected to that users show page.' do
      users = User.all
      visit users_path
      click_link users.first.name
      expect(page).to have_current_path(user_path(users.first.id))
    end
  end
end