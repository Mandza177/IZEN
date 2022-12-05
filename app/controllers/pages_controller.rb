class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :show ]

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

  def ostheopathie
  end

  def naturopathie
  end

  def chiropratique
  end

  def sonotherapie
  end

  def profile
    @favorite_praticians = current_user.praticians
  end
end
