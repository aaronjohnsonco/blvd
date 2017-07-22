class ContactsController < ApplicationController


  def create
    @contact = Contact.create(contact_params)
    
  end

  private

  params.require(:contact).permit(
    :first_name,
    :last_name,
    :email,
    :phone,
    :address,
    :city,
    :state,
    :zip,
    :closing_date,
    :message
  )
end
