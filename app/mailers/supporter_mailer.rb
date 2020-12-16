class SupporterMailer < ApplicationMailer
    default from: 'notifications@example.com'
    
    def welcome_email
        @user = params[:user]
        @url = 'http//example.com/login'
        mail(to: @user.email, subject: 'ようきんしゃしゃったね')
    end
    
    # def send_mail(supporter)
    #     @supporter = supporter
    #     mail(
    #         from: 'rubyist4112@gmail.com',
    #         to: 'fumihisa.yano@gmail.com',
    #         subject: 'お問い合わせ通知'
    #         )
    # end
end
