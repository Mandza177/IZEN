class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :index, :show ]

  def home
  end

  def profile
    @favorite_praticians = current_user.praticians
  end
end
