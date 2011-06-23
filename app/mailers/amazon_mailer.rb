class AmazonMailer < ActionMailer::Base
  default from: "info@campuscred.com"

  def send_email(to)
    mail(to: to, from: '"Ben Pellow" <info@campuscred.com>', subject: 'Email Subject').deliver
  end
end
