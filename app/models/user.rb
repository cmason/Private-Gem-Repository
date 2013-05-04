class User < ActiveRecord::Base

  ## DEVISE STUFF
  devise :database_authenticatable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable

  # Don't want to let random users register: :registerable, :recoverable,

  attr_accessible :email, :password, :password_confirmation, :remember_me

  ## Non-devise stuff
  attr_accessible :fist_name, :last_name

  validates_presence_of :first_name, :last_name

end
