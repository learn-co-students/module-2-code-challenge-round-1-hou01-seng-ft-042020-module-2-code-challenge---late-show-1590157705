class Guest < ApplicationRecord
    has_many :appearances
    has_many :espisode, through: :appearances

end
