class Guest < ApplicationRecord
    has_many :appereances
    has_many :episodes, through: :appereances
end
