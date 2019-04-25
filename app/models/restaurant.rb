class Restaurant < ApplicationRecord
  # validates :title, presence: true
  # validates :address, presence: true
  # validates :description, presence: true
  # validates :food_type, presence: true

  validates_presence_of :title
  validates_presence_of :address
  validates_presence_of :description
  validates_presence_of :food_type

  has_many :reviews , dependent: :destroy

end
