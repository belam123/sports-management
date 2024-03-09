class Ticket < ApplicationRecord
    belongs_to :tournament
    validates :ticket_type,:price,:availability, presence: true
end
