class ContactMailer < ApplicationMailer
  default to: 'overunderapp@gmail.com'

  def contact_email(contact)
    @contact = contact
    @url = 'http://localhost:3000/contact'
    mail(from: @contact.email, subject: 'You have a new contact submission!')
  end

end
