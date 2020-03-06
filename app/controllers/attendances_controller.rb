class AttendancesController < ApplicationController
	
	def index
		
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
end
