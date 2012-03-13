class ContactsController < ApplicationController
  def create
    @contact = Contact.create(params[:contact].merge(ip_address: request.remote_addr))    
  end
end