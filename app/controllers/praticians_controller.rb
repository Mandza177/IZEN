class PraticiansController < ApplicationController

  def index
    # if params[:query].present? && params[:locations].present?
    #   @praticians = Pratician.where(location: params[:locations]).where("title ILIKE ?", "%#{params[:query]}%")
    # else
    #   if params[:query].present? && params[:locations] == ""
    #     @praticians = Pratician.where("title ILIKE ?", "%#{params[:query]}%")
    #   else
    #     if params[:locations].present?
    #       @praticians = Pratician.where(location: params[:locations])
    #     else
    #       @praticians = Pratician.all
    #     end
    #   end
    # end
  end



  def show
    @pratician = Pratician.find(params[:id])
  end
end
