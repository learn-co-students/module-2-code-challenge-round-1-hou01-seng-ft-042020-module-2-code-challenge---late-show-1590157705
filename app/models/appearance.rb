class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 5}
 
end
