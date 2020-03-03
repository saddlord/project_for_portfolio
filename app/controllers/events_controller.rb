class EventsController < ApplicationController
	def index
		
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new(params[:id])
	end

	def create
		@event = Event.new(title: params[:title], start_date: params[:start_date], duration: params[:duration], price: params[:price], location: params[:location],admin_id: current_user.id )
		if @event.save
		redirect_to
			event_path(event.id)
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
