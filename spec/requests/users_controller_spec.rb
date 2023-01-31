require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'get index action' do
    before(:example) { get '/users' }

    it 'response status should be correct for index' do
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered for index' do
      expect(response).to render_template(:index)
    end

    it 'response body should include the correct placeholder for index' do
      expect(response.body).to include('New Post')
    end
  end

  describe 'get show action' do
    it 'response status should be correct for show' do
      get '/users/1'
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered for show' do
      get '/users/1'
      expect(response).to render_template(:show)
    end

    it 'response body should include the correct placeholder for show' do
      get '/users/1'
      expect(response.body).to include('See all posts')
    end
  end
end
