class SellerMailer < ActionMailer::Base
	def registration_confirmation(seller)
		@seller = seller
		mail(:to => seller.email, :subject => "Confirmation Registration our eBook Store", :from => "dil.takodil@gmail.com")
	end
end
