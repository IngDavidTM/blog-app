class Api::V1::UsersController < Api::V1::ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users, only: [:name, :bio, :email]
  end

  def show
    render json: @user
  end

  def create
    @user = User.find(params[:id])

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

   # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = user.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
    end
end
