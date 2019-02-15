class UsersController < ApplicationController
  before_action :find_user , only: [:show]

  def show
  end

  def edit
  end

  def update
    current_user.update(user_params)
    redirect_to current_user
  end

private

  def user_params
    params.require(:user).permit(:username, :name, :website, :bio, :email, :phone, :gender)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
