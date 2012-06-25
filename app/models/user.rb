class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :trackable,   :validatable


  attr_accessible :admin, :first_name, :last_name, :birthdate,
    :email, :password, :password_confirmation, :remember_me


  def name
    "#{first_name} #{last_name}"
  end

  # Recently registered users
  def self.recent(lim=10)
    order("id DESC").
    limit(lim)
  end

  # Returns the last 10 logged in users
  def self.logged_in(lim=10)
    order("current_sign_in_at DESC").
    limit(lim)
  end

end
