class PraticiansController < ApplicationController

  def index

  end

  def show
    @pratician = Pratician.find(params[:id])
  end
end
