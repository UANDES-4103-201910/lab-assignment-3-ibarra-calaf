class TicketOrder < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :ticket_type_information
end
