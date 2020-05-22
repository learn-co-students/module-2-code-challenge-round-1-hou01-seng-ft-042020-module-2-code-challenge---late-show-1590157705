class Appearance < ApplicationRecord
    has_one :episode
    has_one :guest
end
