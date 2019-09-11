class Event < ApplicationRecord
	validates :title, :date, :venue_id, :presence => true
	has_many :tickets, dependent: :destroy
	belongs_to :venue
end
