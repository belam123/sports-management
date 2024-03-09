class Player < ApplicationRecord
    belongs_to :team
    has_many :registrations
    has_many :tournaments, through: :registrations
    validates :name,:date_of_birth,:nationality,:position,:team_id,presence: true
end
