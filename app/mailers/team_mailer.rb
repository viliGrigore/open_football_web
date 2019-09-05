# frozen_string_literal: true

# This is a mailer
class TeamMailer < ApplicationMailer
  def send_creation_message
    mail(to: 'some_email_address@gmail.com',
         bcc: '',
         subject: 'Created TEAM')
  end
end
