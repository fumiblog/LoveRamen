class UserMailer < ApplicationMailer
    default from: "LoveRAMEN"
    def published_email(user)
        @user = user
        mail to: user.email
    end
end
