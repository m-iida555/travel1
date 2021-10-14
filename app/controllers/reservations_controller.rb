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
   
  end 
  def show
    
  end
  def edit
   @reservation=Reservation.find(params[:id])
  end
  def update
  
  end
  def destroy
  
  end
  def hotel_index
    
  end
  
  
  
end
