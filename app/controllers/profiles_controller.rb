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
      current_user.result_test = 1
    end

    # params[:choice][choice_1][1]
    # params[:choice][choice_2][1]
    # params[:choice][choice_3][1]
    # params[:choice][choice_4][1]
    if params[:choice]["choice_1"].first == "b" && params[:choice]["choice_2"].first == "b" && params[:choice]["choice_3"].first == "b" && params[:choice]["choice_4"].first == "b"
      current_user.result_test = 2
    end

    # params[:choice][choice_1][2]
    # params[:choice][choice_2][2]
    # params[:choice][choice_3][2]
    # params[:choice][choice_4][2]
    if params[:choice]["choice_1"].first == "c" && params[:choice]["choice_2"].first == "c" && params[:choice]["choice_3"].first == "c" && params[:choice]["choice_4"].first == "c"
      current_user.result_test = 1
    end
    redirect_to profile_path
  end

  def show
    @favorite_praticians = current_user.praticians
  end
end
