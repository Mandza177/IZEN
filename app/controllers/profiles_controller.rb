class ProfilesController < ApplicationController
  def edit
    @praticians = Pratician.includes(:pratician_images).order("created_at DESC")
  end

  def update

    # params[:choice]["choice_1"][0]
    # params[:choice]["choice_2"][0]
    # params[:choice]["choice_3"][0]
    # params[:choice]["choice_4"][0]
    if params[:choice]["choice_1"].first == "a" && params[:choice]["choice_2"].first == "a" && params[:choice]["choice_3"].first == "a" && params[:choice]["choice_4"].first == "a"
    current_user.result_test = "auditif"

    end

    # params[:choice][choice_1][1]
    # params[:choice][choice_2][1]
    # params[:choice][choice_3][1]
    # params[:choice][choice_4][1]
    if params[:choice]["choice_1"].first == "b" && params[:choice]["choice_2"].first == "b" && params[:choice]["choice_3"].first == "b" && params[:choice]["choice_4"].first == "b"
      current_user.result_test = "corporel"
    end

    # params[:choice][choice_1][2]
    # params[:choice][choice_2][2]
    # params[:choice][choice_3][2]
    # params[:choice][choice_4][2]
    if params[:choice]["choice_1"].first == "c" && params[:choice]["choice_2"].first == "c" && params[:choice]["choice_3"].first == "c" && params[:choice]["choice_4"].first == "c"
      current_user.result_test = "visuel"
    end
    current_user.save!

    if current_user.result_test == "auditif"
      redirect_to thematique2_path
    elsif current_user.result_test == "corporel"
      redirect_to thematique3_path
    elsif current_user.result_test == "visuel"
      redirect_to thematique1_path

    end
  end

  def show
    @favorite_praticians = current_user.praticians
  end
end
