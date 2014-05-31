class SessionBuyersController < ApplicationController
def new
	end
	def create
		buyer = Buyer.authenticate(params[:email], params[:password])
		if buyer
			puts "xxx"
			session[:buyer_id] = buyer.id
			redirect_to root_url, :notice => "Logged in!"
		else
			flash.now.alert = "Invalid email or password"
		end	
	end
	def destroy
		session[:buyer_id] = nil
		redirect_to root_url, :notice => "Logged out!"
	end
end
