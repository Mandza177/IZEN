class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :show , :thematique1, :thematique2, :thematique3]

  def home
  end

  def thematique1
  end

  def thematique2
  end

  def thematique3
  end

  def hypnose
    @praticians = Pratician.where("praticians.job @@ :job", job: params[:job])
  end

  def osteopathie
    @praticians = Pratician.where("praticians.job @@ :job", job: params[:job])
  end

  def naturopathie
    @praticians = Pratician.where("praticians.job @@ :job", job: params[:job])
  end

  def sonotherapie
    @praticians = Pratician.where("praticians.job @@ :job", job: params[:job])
  end

  def arttherapie
    @praticians = Pratician.where("praticians.job @@ :job", job: params[:job])
  end

  def shiatsu
    @praticians = Pratician.where("praticians.job @@ :job", job: params[:job])
  end
end
