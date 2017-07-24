class ContactsController < ApplicationController


  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      ContactMailer.contact_home_email(@contact).deliver
      ContactMailer.thank_you_email(@contact).deliver
      redirect_to root_path
      flash[:notice] = "Your message has been sent."
    else
      redirect_to root_path
      flash[:notice] = "Your email did not go through, please try again."
    end

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
