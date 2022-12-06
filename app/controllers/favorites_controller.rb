class FavoritesController < ApplicationController

  before_action :set_pratician, only: [:create]

  def index
    @praticians = Pratician.includes(:pratician_images).order("created_at DESC")
  end

  def create
    @favorite = Favorite.create(pratician_id: params[:pratician_id],user_id: current_user.id)
    redirect_to praticians_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to praticians_path
  end

  def set_pratician
    @pratician = Pratician.find(params[:pratician_id])
  end
end
