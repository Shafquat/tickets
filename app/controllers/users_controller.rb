class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@tickets = Ticket.where(user_id: @user.id).order("created_at DESC")
	
	end
	

end
