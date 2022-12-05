class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :index, :show ]

  def home
  end

  def thematiques
  end

  def hypnose
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
