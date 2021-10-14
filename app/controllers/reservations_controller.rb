class ReservationsController < ApplicationController

  def top

  end 
  
  def index
   @reservations=Reservation.all
  end
  
  def new
   @reservation=Reservation.new
  end
  def create
     reservation=Reservation.new(params.permit(:roompic,:roomname,:roominfo,:money,:area,))
    if reservation.save
    flash[:notice]="新規登録しました"
    redirect_to edit_reservation_path(user_id)
   else
    redirect_to new_reservation
   end
  end 
  def show
    
  end
  def edit
   @reservation=Reservation.find(params[user_id])
  end
  def update
  
  end
  def destroy
  
  end
  def hotel_index
    
  end
  
  
  
end
