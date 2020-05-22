class Episode < ApplicationRecord
     has_many :guests, through: :appearances
     has_one :appearance
end
