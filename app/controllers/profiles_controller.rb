class ProfilesController < ApplicationController
  def edit
    @praticians = Pratician.includes(:pratician_images).order("created_at DESC")
  end

  def update

    # redirect_to profile_path
    
    params[:choice][choice_1][0]
    params[:choice][choice_2][0]
    params[:choice][choice_3][0]
    params[:choice][choice_4][0]

    current_user.result_test = "Auditif"

    params[:choice][choice_1][1]
    params[:choice][choice_2][1]
    params[:choice][choice_3][1]
    params[:choice][choice_4][1]
    current_user.result_test = "Corporel"

    params[:choice][choice_1][2]
    params[:choice][choice_2][2]
    params[:choice][choice_3][2]
    params[:choice][choice_4][2]
    current_user.result_test = "Visuel"


  end

  def show
    @favorite_praticians = current_user.praticians
  end

  # private

  # def survey_algo
  #   params.require(:choice).permit(:choice_1)["choice_1"] # "A: Entendre le chant des vagues"
  #   params.require(:choice).permit(:choice_2)["choice_1"] # "A: Je procède par étape pour le résoudre"
  #   params.require(:choice).permit(:choice_3)["choice_1"] # "A: Je crie et je discute après"
  #   params.require(:choice).permit(:choice_4)["choice_1"] # "B: Un massage à 4 mains"
  # end
end
