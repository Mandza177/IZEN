class ProfilesController < ApplicationController

  def create
    @profile = Profile.new(params [:profile])
    @profile.save
    redirect_to profile_path(@profile)
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(params[:profile])
  end

  private

  def profile_params
    params.require(:profile).permit(:result_test, :symptom_id)
  end
end
