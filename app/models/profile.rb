class Profile < ActiveRecord::Base
  belongs_to :user

  scope :latests, lambda { order(updated_at: :desc)}
  def self.all_users_profiles_hash
    User.all.map do |u|
      {
        id: u.id,
        created_at: u.created_at,
        last_sign_in_at: u.last_sign_in_at,
        name: u.name,
        email: u.email,
        profiles: u.profiles.map(&:attributes)
      }
    end
  end
end
