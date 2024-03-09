class Registration < ApplicationRecord
    belongs_to :user
    belongs_to :tournament
    validates :registration_date,:registration_status,:user_id,:tournament_id,presence: true
end
