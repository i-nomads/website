class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    @contact = Contact.new
  end
end
