class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6, message: "Rating must be 1-5" }

end
