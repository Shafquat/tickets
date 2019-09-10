class Ticket < ApplicationRecord
	validates :section, :row, :price, :event_id, :user_id, :presence => true
	belongs_to :user
	belongs_to :event
end
