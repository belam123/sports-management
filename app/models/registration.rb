class Registration < ApplicationRecord
    belongs_to :player
    belongs_to :tournament
    validates :registration_date,:registration_status,:player_id,:tournament_id,presence: true
end
