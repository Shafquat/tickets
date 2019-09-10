class Event < ApplicationRecord
	validates :title, :date, :venue_id, :presence => true
	has_many :tickets
	belongs_to :venue
end
