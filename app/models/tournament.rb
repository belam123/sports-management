class Tournament < ApplicationRecord
    has_many :registrations
    has_many :users, through: :registrations
    has_many :tickets
    validates :name,:start_date,:end_date,:location,:game_id,presence: true
end
