class ContactMailer < ActionMailer::Base
  default to: 'adithyasiyengar@gmail.com'
  def contact_email(name, email, subject, body)
    @name = name
    @email = email
    @subject = subject
    @message = body
    mail(from: email, subject: subject)
  end
end
