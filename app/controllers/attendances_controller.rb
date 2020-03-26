class AttendancesController < ApplicationController
		before_action :event_owner

	def index
		@event=Event.find(params[:event_id])
		@attendees=@event.users
	end

	def new
		@attendance = Attendance.new(params[:id])
	end

	def create
	    @attendance = Attendance.new(user: current_user, stripe_customer_id: params[:token], event: Event.find(params[:event]))
		if @attendance.save 
			redirect to 
			event_path(event.id)
		else 
			render :new
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy

	end

	private

	def event_owner
		@event=Event.find(params[:event_id])
		unless current_user.id == @event.admin_id
	  	redirect_to event_path(@event.id)
	end
	end
end
