class PraticiansController < ApplicationController

  def index
    if params[:query].present? && params[:cities].present?
      @toys = Toy.where(city: params[:cities]).where("title ILIKE ?", "%#{params[:query]}%")
    else
      if params[:query].present? && params[:cities] == ""
        @toys = Toy.where("title ILIKE ?", "%#{params[:query]}%")
      else
        if params[:cities].present?
          @toys = Toy.where(city: params[:cities])
        else
          @praticians = Praticians.all
        end
      end
    end
  end

  def show
    @pratician = Pratician.find(params[:id])
  end
end
