class PraticiansController < ApplicationController

  def index

    if params[:query].present? && params[:address].present?
        sql_query = <<~SQL
        praticians.first_name @@ :query
          OR praticians.job @@ :query
          OR praticians.last_name @@ :query
          OR symptoms.description @@ :query
        SQL
      @praticians = Pratician.joins(:symptom).where("praticians.address @@ :address", address: params[:address]).where(sql_query, query: "%#{params[:query]}%")
    else
      if params[:query].present? && params[:address].blank?
        sql_query = <<~SQL
          praticians.first_name @@ :query
          OR praticians.job @@ :query
          OR praticians.last_name @@ :query
          OR symptoms.description @@ :query
        SQL
        @praticians = Pratician.joins(:symptom).where(sql_query, query: "%#{params[:query]}%")
      else
        if params[:address].present?
          @praticians = Pratician.where("praticians.address @@ :address", address: params[:address])
        else
          @praticians = Pratician.all
        end
      end
    end
  end

  def show
    @pratician = Pratician.find(params[:id])
  end
end
