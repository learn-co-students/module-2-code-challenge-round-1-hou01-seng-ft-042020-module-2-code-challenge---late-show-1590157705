class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validate :cant_have_same_guest

  def cant_have_same_guest
    if self.guest.episodes.include?(self.episode)
      errors.add(:guest, "guest cant be on same episode more than once")
    end
  end

end
