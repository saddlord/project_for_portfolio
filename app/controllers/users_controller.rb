class UsersController < ApplicationController

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
end
