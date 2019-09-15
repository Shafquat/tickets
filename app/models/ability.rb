# frozen_string_literal: true
class Ability
	include CanCan::Ability

	def initialize(user)
		if user.nil?
			can :read, Ticket
		else
			can [:read, :create], Ticket
			can [:update, :destroy], Ticket, :user_id => user.id
		end
	end
end