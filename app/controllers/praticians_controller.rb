class PraticiansController < ApplicationController

  def index
    if params[:query].present? && params[:address].present?
      sql_query = <<~SQL
        praticians.job @@ :query
        OR praticians.first_name @@ :query
        OR praticians.last_name @@ :query
        OR symptoms.description @@ :query
      SQL
      @praticians = Pratician.joins(:symptom).where(address: params[:address]).where(sql_query, query: params[:query])
    else
      if params[:query].present? && params[:address] == ""
        sql_query = <<~SQL
          praticians.job @@ :query
          OR praticians.first_name @@ :query
          OR praticians.last_name @@ :query
          OR symptoms.description @@ :query
        SQL
        @praticians = Pratician.joins(:symptom).where(sql_query, query: params[:query])
      else
        if params[:address].present?
          @praticians = Pratician.where(address: params[:address])
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
