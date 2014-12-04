class HomeController < ApplicationController
  def index
    @other_users = User.others(current_user)
  end
end
