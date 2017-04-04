class ContactsController < ApplicationController

  def index
    @contact = Contact.new
  end

  def show
    @contacts = Contact.all
  end

  def create
      @contact = Contact.new(contact_params)
      if @contact.save
        redirect_to :contacts
      else
        render :contacts
      end

  end

  private

  def contact_params
      params.require(:contact).permit(:fullname, :email, :phone, :message)
  end

end
