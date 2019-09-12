class Ticket < ApplicationRecord
	validates :section, :row, :price, :event_id, :user_id, :presence => true
	validates :user_id, uniqueness: { :scope => [:section, :row, :event_id],
    message: "You can't post the same tickets twice. Please delete your old listing first."  }
	belongs_to :user
	belongs_to :event
end
