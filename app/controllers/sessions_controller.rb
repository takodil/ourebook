class SessionsController < ApplicationController
	def new
	end
	def create
		seller = Seller.authenticate(params[:email], params[:password])
		if seller
			session[:seller_id] = seller.id
			redirect_to root_url, :notice => "Logged in!"
		else
			flash.now.alert = "Invalid email or password"
		end	
	end
	def destroy
		session[:seller_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end
end