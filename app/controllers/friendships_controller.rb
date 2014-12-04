class FriendshipsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @friends = current_user.friends
  end

  def create
    invitee = User.find_by_id(params[:user_id])
    current_user.invite invitee
    render :json => {result: invitee.approve(current_user), user: current_user}
  end
end
