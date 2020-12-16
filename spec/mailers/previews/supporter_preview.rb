# Preview all emails at http://localhost:3000/rails/mailers/supporter
class SupporterPreview < ActionMailer::Preview
  def supporter
     supporter = Supporter.new(name: "侍 太郎", message: "問い合わせメッセージ")
     SupporterMailer.send_mail(supporter)
  end
end
