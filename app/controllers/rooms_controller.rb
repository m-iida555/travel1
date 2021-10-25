class RoomsController < ApplicationController
  def index
  end
  
  def new
    @room=Room.new
  end

  def create
    @room=Room.new(params.require(:room).permit(:roompic, :roomname, :roominfo, :money, :area).merge(user_id: current_user.id))
  if @room.save
    flash[:notice]="新規登録しました"
    redirect_to new_reservation_path(@room.id)
  else
    redirect_to new_room_path
  end
  end 
  
  def show

  end
  def edit
  end
  def update
  
  end
  def destroy
  end
end
