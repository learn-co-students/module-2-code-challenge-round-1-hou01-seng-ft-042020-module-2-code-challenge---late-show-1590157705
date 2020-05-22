class Guest < ApplicationRecord
    has_many :episodes, through: :appearances
    has_one :appearance
end
