class ApplicationController < ActionController::Base
  def current_user
    User.find(id: 1)
  end
end
