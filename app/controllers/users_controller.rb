class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.acceptation = "pending"
    @user.user = curuser_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user]) # Will raise ActiveModel::ForbiddenAttributesError
  end

end
