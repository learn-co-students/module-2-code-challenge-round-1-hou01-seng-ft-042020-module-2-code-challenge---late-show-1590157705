class Episode < ApplicationRecord
    has_many :appearances 
    has_many :guests, through: :appearances 
    def average
       self.appearances.map do |appearance| appearance.rating end.sum/ self.appearances.count  
    end 
end
