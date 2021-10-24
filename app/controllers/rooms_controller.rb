class RoomsController < ApplicationController
  def index
  end
  
  def new
    @room=Room.new
  end

  def create
    @room=Room.new(params.require(:room).permit(:roompic, :roomname, :roominfo, :money, :area))
  if @room.save
    flash[:notice]="新規登録しました"
    redirect_to new_reservation_url(@room.id)
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
