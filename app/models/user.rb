class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Amistad::FriendModel

  has_many :profiles

  def self.others current_user
    User.where.not(id: current_user.id)
  end

  def display_name
    name || email
  end
end
