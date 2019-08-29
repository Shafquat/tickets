class EventsController < ApplicationController
	before_action :find_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.all.order("created_at DESC")
	end
	
	def show
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
	
	private
	def event_params
		params.require(:event).permit(:title, :description, :date)
	end
	
	def find_event
		@event = Event.find(params[:id])
	end
end
