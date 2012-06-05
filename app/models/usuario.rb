class Usuario < ActiveRecord::Base
	validates :email, :password, presence: true
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, ,  and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :trackable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
end
