class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Amistad::FriendModel

  has_many :profiles

  # accepts_nested_attributes_for :profiles, reject_if: :all_blank

  #TODO: should delegete profile desc to user and

  def desc
    profiles.latests.first
  end

  def self.others current_user
    if current_user.present?
      User.where.not(id: current_user.id)
    else
      User.all
    end
  end

  def display_name
    name || email
  end
end
