class EventsController < ApplicationController
	before_action :find_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.all.order(:date)
	end
	
	def show
		@tickets = Ticket.where(event_id: @event.id).order("created_at DESC")
	end
	
	def new
		@event = Event.new
	end
	
	def create
		@event = Event.new(event_params)
		
		if @event.save
			redirect_to @event, notice: "Successfully loaded your events"
		else
			render 'new'
		end
			
	end
	
	def update
		if @event.update(event_params)
			redirect_to @event, notice: "Event was succcesfully updated!"
		else
			render 'edit'
		end
	end
	
	def destroy
		@event.destroy
		redirect_to root_path
	end
	
	private
	def event_params
		params.require(:event).permit(:title, :description, :date, :venue_id)
	end
	
	def find_event
		@event = Event.find(params[:id])
	end
end
