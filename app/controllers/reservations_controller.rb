class ReservationsController < ApplicationController
  
  def create
    @reservation = current_user.reservations.create(reservation_params)
    if @reservation.save
      UserMailer.welcome_email(current_user).deliver
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