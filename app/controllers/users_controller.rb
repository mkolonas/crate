class UsersController < ApplicationController
	def new
		@user = User.new
	end 

	def create 
		@user = User.new(user_params)
		@user.save #Saves tweet to database
		render 'new'
	end

	def user_params
		params.require(:name).permit(:email,:message)
	end

	def show
		@user = User.all
	end

end
