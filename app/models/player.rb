class Player < ApplicationRecord
    belongs_to :team
    validates :name,:date_of_birth,:nationality,:position,:team_id,presence: true
end
