require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'get index action' do
    before(:example) { get '/users/:user_id/posts', params: { user_id: 1 } }

    it 'response status should be correct for index' do
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered for index' do
      expect(response).to render_template(:index)
    end

    it 'response body should include the correct placeholder for index' do
      expect(response.body).to include('Posts')
    end
  end

  describe 'get show action' do
    before(:example) { get '/users/:user_id/posts/:post_id', params: { user_id: 1, post_id: 1 } }

    it 'response status should be correct for show' do
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered for show' do
      expect(response).to render_template(:show)
    end

    it 'response body should include the correct placeholder for show' do
      expect(response.body).to include('Post')
    end
  end
end
