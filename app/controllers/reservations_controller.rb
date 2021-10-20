class ReservationsController < ApplicationController


  
  def index
   @reservations=Reservation.all
  end
  
  def new
   @reservation=Reservation.new
  end

  def create
     @reservation=Reservation.new(params.require(:reservation).permit(:roompic, :roomname, :roominfo, :money, :area))
    if @reservation.save
    flash[:notice]="新規登録しました"
    redirect_to reservations_room_reserve_path(@reservation.id)
   else
    redirect_to new_reservation_path
   end
  end 
  
  def show #部屋の最終確認後、部屋情報画面
    
  end
  def edit
  end
  def update
  
  end
  def destroy
  
  end
  def hotel_index
    
  end
  
  private
  
  def top

  end 
  
  def room_reserve #部屋の予約画面兼部屋の情報
   @room_info=Reservation.find_by(params[:roompic, :roomname, :roominfo, :money, :area])
   @reserve=Reservation.new
   @user=User.find(params[:img])
   binding.pry
  end
  
    #確定前の最終確認画面
  def reservation_check #予約最終確認画面
   @reserve=Reservation.new(user_params)
   render :reservations_room_reserve if @check.invalid?
  end
  
  #確定前の最終確認画面で、一時的に情報を受け取っているアクション
  def user_params
   params.require(:reservaiton).permit(:start,:end,:persons,:money)
  end
  
  def create_reserve 
   @reserve=Reserve.new(user_params)
   if @reserve.save
    flash[:notice]="予約できました"
    redirect_to reservation_path(@reserve.id)
   else
    redirect_to reservations_room_reserve_path(@reserve.id)
   end
  end
  

  
  
end
