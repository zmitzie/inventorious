class ApplicationMailer < ActionMailer::Base
  default from: ENV['EMAIL_SEND_FROM']
  layout 'mailer'
end
