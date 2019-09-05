class VenuesController < ApplicationController
	before_action :find_venue, only: [:show, :edit, :update, :destroy]
	
	def show
		@events = Event.where(venue_id: @venue.id).order("date ASC")
	end
	
	def new
		@venue = Venue.new
	end
	
	def create
		@venue = Venue.new(venue_params)
		
		if @venue.save
			redirect_to @venue, notice: "Successfully loaded your events"
		else
			render 'new'
		end
			
	end
	
	def update
		if @venue.update(venue_params)
			redirect_to @venue, notice: "Event was succcesfully updated!"
		else
			render 'edit'
		end
	end
	
	def destroy
		@venue.destroy
		redirect_to root_path
	end
	
	private
	def venue_params
		params.require(:venue).permit(:name, :description, :address)
	end
	
	def find_venue
		@venue = Venue.find(params[:id])
	end
end
