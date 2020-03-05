class UsersController < ApplicationController

	before_action :authenticate_user!
	before_action :is_owner

	def index
	end

	def show
	@user = User.find(params[:id])
	@admin_events = Event.where(admin_id: @user.id)
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
