class Review < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content
  validates_presence_of :rating

  belongs_to :restaurant

end
