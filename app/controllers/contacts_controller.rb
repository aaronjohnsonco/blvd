class ContactsController < ApplicationController


  def create
    @contact = Contact.new(contact_params)
    if verify_recaptcha(model: @contact) && params[:home_btn] && @contact.save
      ContactMailer.contact_home_email(@contact).deliver
      ContactMailer.thank_you_email(@contact).deliver
      redirect_to root_path
      flash[:notice] = "Your message has been sent."
    else
      redirect_to root_path
      flash[:notice] = "Your email did not go through, please try again."
    end
    if verify_recaptcha(model: @contact) && params[:contact_btn] && @contact.save
      ContactMailer.contact_general_email(@contact).deliver
      ContactMailer.thank_you_email(@contact).deliver
      redirect_to root_path
      flash[:notice] = "Your message has been sent."
    else
      redirect_to root_path
      flash[:notice] = "Your email did not go through, please try again."
    end
    if verify_recaptcha(model: @contact) && params[:warranty_btn] && @contact.save
      ContactMailer.contact_warranty_email(@contact).deliver
      ContactMailer.thank_you_email(@contact).deliver
      redirect_to root_path
      flash[:notice] = "Your message has been sent."
    else
      redirect_to root_path
      flash[:notice] = "Your email did not go through, please try again."
    end

  end

  private
  def contact_params
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
      :message,
      :community
    )
  end

end
