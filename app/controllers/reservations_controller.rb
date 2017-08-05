require 'mailgun'
class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @reservation = current_user.reservations.create(reservation_params)
    if @reservation.save
      # First, instantiate the Mailgun Client with your API key
      mg_client = Mailgun::Client.new ENV["MAILGUN_API_KEY"]

      # Define your message parameters
      message_params = { from: "doctor-teddy@example.com",
                         to:   current_user.email,
                         subject:  "#{current_user.name}님의 병원 진료 예약이 완료되었습니다.",
                         text:    "예약 시간은 #{@reservation.reserved_date}입니다. \n 사이트로 연결하기 위해서는 #{@url}을 클릭해주세요. \n Dr.Teddy를 이용해주셔서감사합니다."
                       }

      # Send your message through the client
	    mg_client.send_message ENV["MAILGUN_DOMAIN"], message_params
	    
      redirect_to @reservation.vet, :notice => "예약 요청이 전송되었습니다."
    else
      redirect_to vet_review(@reservation.vet), :notic => "다시 시도해주세요."
    end
  end
  
  private
  
    def reservation_params
      params.require(:reservation).permit(:reserved_date, :symptom, :vet_id)
    end
end 