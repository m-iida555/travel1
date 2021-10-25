class ReservationsController < ApplicationController


  
  def index
   @reservations=Reservation.all
  end
  
  def new
   @room=Room.find(params[:room_id])
   @reserve=Reservation.new
   @user=User.find(params[:current_user.img])
  end

  def create
   @reserve=Reservation.new(params.require(:reservation).permit(:start,:end,:persons))
   if @reserve.save
    flash[:notice]="予約できました"
    redirect_to edit_reservation_path(@reserve.id)
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
  
  
  
  #以下は利用しない
  
  def room_reserve #部屋の予約画面兼部屋の情報
   @room_info=Reservation.find_by(params[:roompic, :roomname, :roominfo, :money, :area])
   @reserve=Reservation.new
   @user=User.find(params[:img])
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
   @reserve=Reservation.new(user_params)
   if @reserve.save
    flash[:notice]="予約できました"
    redirect_to reservation_path(@reserve.id)
   else
    redirect_to reservations_room_reserve_path(@reserve.id)
   end
  end
  

  
  
end
