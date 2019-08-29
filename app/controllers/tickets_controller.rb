class TicketsController < ApplicationController
	before_action :find_ticket, only: [:show, :edit, :update, :destroy]

	def index
		@tickets = Ticket.all.order("created_at DESC")
	end
	
	def show
	end
	
	def new
		@ticket = Ticket.new
	end
	
	def create
		@ticket = Ticket.new(ticket_params)
		
		if @ticket.save
			redirect_to @ticket, notice: "Successfully loaded your tickets"
		else
			render 'new'
		end
			
	end
	
	private
	def ticket_params
		params.require(:ticket).permit(:section, :row, :price, :seats)
	end
	
	def find_ticket
		@ticket = Ticket.find(params[:id])
	end
end
