class UserMailer < ApplicationMailer
  default from: '0327jane@gmail.com'
  
  def welcome_email(user)
    @user = user
    @url  = 'https://doctor-teddy-ggingmin.c9users.io/'
    mail( :to => @user.email, :subject => '닥터테디에서 진료가 예약되었습니다. 예약 내역을 확인해주세요.')
  end
  
end
