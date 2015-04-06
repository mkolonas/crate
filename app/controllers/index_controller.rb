class IndexController < ApplicationController

	def new
		@user = User.new
	end 

	def create
		@user = User.new(user_params)
		@user.save #Saves tweet to database
	end

	def user_params
		params.require(:name).permit(:email,:message)
	end

end