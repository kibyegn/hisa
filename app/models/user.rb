class User < ActiveRecord::Base

  validates_uniqueness_of :email
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable,  :omniauthable, :rememberable, :lockable
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable, :confirmable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
