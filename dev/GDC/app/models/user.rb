class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, authentication_keys: [:username] 
         # :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true
end
