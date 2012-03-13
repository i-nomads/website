class Contact < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :message
  
  after_create :notify
  
  def notify
    ContactMailer.contact_email(self).deliver
  end
  
  def email_address
    name.blank? ? email : "#{name} <#{email}>"
  end
  
  def name_label
    name.blank? ? 'Anonymous' : name
  end
end