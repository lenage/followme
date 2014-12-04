class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @profiles = Profile.where(user_id: params[:id]).order(updated_at: :desc)
  end
end
