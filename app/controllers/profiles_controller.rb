class ProfilesController < ApplicationController
  #TODO: move this json API to another place and add versioning, maybe try https://github.com/Sutto/rocket_pants
  def index
    @profiles = Profile.where(user_id: params[:id]).order(updated_at: :desc)
    respond_to do |format|
      format.html { render text: "not supported"}
      format.json { render json: {response: Profile.all_users_profiles_hash }}
    end
  end

  def show
    @user = User.find(params[:id])
    @profiles = Profile.where(user_id: params[:id]).latests
    json_data = { profiles: @profiles.map(&:attributes),  profile_count: @profiles.size }
    respond_to do |format|
      format.html
      format.json { render json: { response: json_data }}
    end
  end
end
