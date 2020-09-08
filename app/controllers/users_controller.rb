class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def index
    @users = User.all
  end

  def show
    @books = @user.books
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, success: 'You have updated user successfully.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
