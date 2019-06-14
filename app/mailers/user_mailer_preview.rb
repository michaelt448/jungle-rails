class UserMailerPreview < ActionMailer::Preview
    def welcome_email
      UserMailer.welcome('person')
    end
  end