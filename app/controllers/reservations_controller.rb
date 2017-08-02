class ReservationsController < ApplicationController
  
  def create
    @reservation = current_user.reservations.create(reservation_params)
    
    redirect_to @reservation.vet
  end
  
  private
  
    def reservation_params
      params.require(:reservation).permit(:reserved_date, :symptom, :vet_id)
    end
end 