class User < ApplicationRecord
  has_many :challenge_users, dependent: :destroy
  has_many :challenges, through: :challenge_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
