require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'get index action' do
    it 'response status should be correct for index' do
      get '/users/:user_id/posts', params: { user_id: 1 }
      expect(response).to have_http_status(:success)
    end

    it 'correct template should be rendered' do
      get '/users/:user_id/posts', params: { user_id: 1 }
      expect(response).to render_template(:index)
    end
  end
end
