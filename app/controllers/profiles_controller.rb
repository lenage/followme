class ProfilesController < ApplicationController
  def index
    @profiles = Profile.where(user_id: params[:id]).order(updated_at: :desc)
    respond_to do |format|
      format.html { render text: "not supported"}
      format.json { render json: {response: Profile.all_users_profiles_hash }}
    end
  end

  def show
    @user = User.find(params[:id])
    @profiles = Profile.where(user_id: params[:id]).order(updated_at: :desc)
  end
end
