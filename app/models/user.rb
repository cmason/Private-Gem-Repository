class User < ActiveRecord::Base

  ## DEVISE STUFF
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  ## Non-devise stuff
  attr_accessible :fist_name, :last_name

  validates_presence_of :first_name, :last_name

end
