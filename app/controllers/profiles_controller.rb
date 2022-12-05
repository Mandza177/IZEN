class ProfilesController < ApplicationController
  def edit
  end

  def update
  end

  def show
    @favorite_praticians = current_user.praticians
  end

end
