require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'get index action' do
    it 'response status should be correct for index' do
      get '/users/1/posts'
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered for index' do
      get '/users/1/posts'
      expect(response).to render_template(:index)
    end

    it 'response body should include the correct placeholder for index' do
      get '/users/1/posts'
      expect(response.body).to include('Number of posts')
    end
  end

  describe 'get show action' do
    before(:example) { get '/users/1/posts/14' }

    it 'response status should be correct for show' do
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered for show' do
      expect(response).to render_template(:show)
    end

    it 'response body should include the correct placeholder for show' do
      expect(response.body).to include('Post:')
    end
  end
end
