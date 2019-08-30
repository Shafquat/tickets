class TicketsController < ApplicationController
	before_action :find_ticket, only: [:show, :edit, :update, :destroy]

	def index
		@tickets = Ticket.all.order("created_at DESC")
	end
	
	def show
	end
	
	def new
		@ticket = current_user.tickets.build
	end
	
	def create
		@ticket = current_user.tickets.build(ticket_params)
		
		if @ticket.save
			redirect_to @ticket, notice: "Successfully loaded your tickets"
		else
			render 'new'
		end
			
	end
	
	def update
		if @ticket.update(ticket_params)
			redirect_to @event, notice: "Event was succcesfully updated!"
		else
			render 'edit'
		end
	end
	
	def destroy
		@ticket.destroy
		redirect_to root_path
	end
	
	private
	def ticket_params
		params.require(:ticket).permit(:section, :row, :price, :seats, :event_id)
	end
	
	def find_ticket
		@ticket = Ticket.find(params[:id])
	end
end
