class PraticiansController < ApplicationController

  def index

    if params[:query].present? && params[:address].present?
      sql_query = <<~SQL
        praticians.first_name ILIKE :query
        OR praticians.job ILIKE :query
        OR praticians.last_name ILIKE :query
        OR symptoms.description ILIKE :query
      SQL
      @praticians = Pratician.joins(:symptom).where("praticians.address ILIKE :address", address: params[:address]).where(sql_query, query: "%#{params[:query]}%")
    elsif params[:query].present? && params[:address].blank?
      sql_query = <<~SQL
        praticians.first_name ILIKE :query
        OR praticians.job ILIKE :query
        OR praticians.last_name ILIKE :query
        OR symptoms.description ILIKE :query
      SQL
      @praticians = Pratician.joins(:symptom).where(sql_query, query: "%#{params[:query]}%")
    elsif params[:address].present?
      @praticians = Pratician.where("praticians.address ILIKE :address", address: params[:address])
    else
      @praticians = Pratician.all
    end
  end

  def show
    @pratician = Pratician.find(params[:id])
  end

end
