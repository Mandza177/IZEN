class PraticiansController < ApplicationController

  def index
    @praticians = Pratician.all
  end

  def show
    @pratician = Pratician.find(params[:id])
  end
end
