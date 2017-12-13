class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :mezzages
  has_many :board_users
  has_many :boards, :through => :board_users

  validates_presence_of :name, :username, :email
end
