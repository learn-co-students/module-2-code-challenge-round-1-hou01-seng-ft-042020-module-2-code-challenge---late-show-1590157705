class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {only_integer: true, greater_than: 0, less_than: 6}
    validates :guest, :guest_id, numericality: {only_integer: true, less_than: 2}
end
