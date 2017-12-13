class Mezzage < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates_presence_of :title, :body
end
