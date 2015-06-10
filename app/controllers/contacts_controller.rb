class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params.require(:contact).permit(:firstName, :lastName, :email, :messageBody))
    if @contact.save
      session[:item_attributes] = @contact.attributes
      render :action => :success
    else
      session[:error_messages] = @contact.errors
      render :action => :index
    end
  end

  def success
    @contact = Contact.new(session[:item_attributes])
  end
end
