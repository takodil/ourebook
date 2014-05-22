class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_seller

  private

  def current_seller
  	@current_seller ||= Seller.find(session[:seller_id]) if session[:seller_id]
  end
end

