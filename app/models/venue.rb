class Venue < ApplicationRecord
	validates :name, :address, :presence => true
	has_many :events
end
