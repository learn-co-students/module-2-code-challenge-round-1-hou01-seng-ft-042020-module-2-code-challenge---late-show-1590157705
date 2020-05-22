class Episode < ApplicationRecord 
	has_many :appearances
	has_many :guests, through: :appearances

  validates_associated :guests

end
