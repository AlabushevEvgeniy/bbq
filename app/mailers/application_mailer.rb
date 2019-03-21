class ApplicationMailer < ActionMailer::Base
  default from: 'service@bbq-event.herokuapp.com'
  layout 'mailer'
end
