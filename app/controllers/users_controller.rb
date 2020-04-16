class UsersController < ApplicationController

	before_action :authenticate_user!
	before_action :is_owner

	def index
	end

	def show
	@user = User.find(params[:id])
	@admin_events = Event.where(admin: @user.id)
	    (@admin_events.size > 0)? (@admin = true) : (@admin = false)
	@guest_events = Event.joins(:attendances).where('attendances.user_id = ?', @user.id)
	    (@guest_events.size > 0)? (@guest = true) : (@guest = false)
	end

	def new
	end

	def create
	end

	def edit		
	end

	def update	
	end

	def destroy	
	end

	private

	def is_owner
      if current_user.id.to_i != params[:id].to_i
        redirect_to "/"
      end
  end
end
