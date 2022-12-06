class ProfilesController < ApplicationController
  def edit
    @praticians = Pratician.includes(:pratician_images).order("created_at DESC")
  end

  def update
    byebug
    redirect_to profile_path
  end

  def show
    @favorite_praticians = current_user.praticians
  end

  private

  # def survey_algo
  #   params.require(:choice).permit(:choice_1)["choice_1"] # "A: Entendre le chant des vagues"
  #   # params.require(:choice).permit(:choice_2)["choice_1"] # "A: Je procède par étape pour le résoudre"
  #   # params.require(:choice).permit(:choice_3)["choice_1"] # "A: Je crie et je discute après"
  #   # params.require(:choice).permit(:choice_4)["choice_2"] # "B: Un massage à 4 mains"
  # end
end
