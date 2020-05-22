class Guest < ApplicationRecord
has_many :appearances 
has_many :episodes, through: :appearances 

def order_by_rating 
    self.appearances.sort_by do |appearance| 
        appearance[:rating] end.reverse 
end 

end
