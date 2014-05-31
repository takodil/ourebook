class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_seller
  helper_method :current_buyer

  private

  def current_seller
  	@current_seller ||= Seller.find(session[:seller_id]) if session[:seller_id]
  end
  
  def current_buyer
  	@current_buyer ||= Buyer.find(session[:buyer_id]) if session[:buyer_id]
  end
end

