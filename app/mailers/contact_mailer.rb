class ContactMailer < ApplicationMailer

  def thank_you_email(contact)
    @contact = contact
    mail(to: contact.email, from: ['amanda@blvdhomes.com', 'aaronj@bigmoondev.com'], subject: 'Thanks for contacting us!')
  end

  def contact_general_email(contact)
    @contact = contact
    mail(from: contact.email, to: ['amanda@blvdhomes.com', 'aaronj@bigmoondev.com'], subject: 'New General Contact')
  end

  def contact_warranty_email(contact)
    @contact = contact
    mail(from: contact.email, to: ['amanda@blvdhomes.com', 'aaronj@bigmoondev.com'], subject: 'New Warranty Page Contact')
  end

  def contact_home_email(contact)
    @contact = contact
    mail(from: contact.email, to: ['amanda@blvdhomes.com', 'aaronj@bigmoondev.com'], subject: 'New Home Page Contact')
  end

end
