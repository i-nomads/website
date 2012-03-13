class ContactMailer < ActionMailer::Base
  def contact_email(contact)
    mail from: contact.email_address, to: RECIPIENT_EMAIL, subject: "Message from #{contact.name_label}", body: contact.message
  end
end