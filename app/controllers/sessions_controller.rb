class SessionsController < ApplicationController
	def new
	end
	def create
		user=User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			flash[:error]="Invalid username/password" #This will disappear as soon as there is new request
			render 'new'
		end
	end
	def destroy
		sign_out
    	redirect_to root_url
	end
end
