class ApplicationMailer < ActionMailer::Base
  default from:     "LoveRAMEN",  #差出人の名前
          reply_to: Rails.application.credentials.gmail[:user_name] #差出人のメールアドレス
  layout 'mailer'
end
