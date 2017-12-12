class Board < ApplicationRecord
  has_many :mezzages
  has_many :board_users
  has_many :users, :through => :board_users
end
