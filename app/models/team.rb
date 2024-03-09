class Team < ApplicationRecord
    has_many :players
    validates :name,:home_venue,presence: true
end
