class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances  

  def avg_rating
    self.appearances.map { |appearance| appearance.rating }.sum / self.appearances.length
  end
end
