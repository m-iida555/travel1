class RoomsController < ApplicationController



  def index
    @rooms=current_user.rooms#アソシエーションを気づいた上での１対多のユーザーひとりの一覧を表示させる方法

  end
  
  #def room_list
   #@rooms=current_user.rooms
   #@user=User.find(params[:id])
   #@rooms=user.rooms.where(params[:user_id])
   #@rooms=@user.rooms
   #@rooms=Room.where(user_id: @user.id)
  #end
  
  def new
    @room=Room.new
  end

  def create
  @room=Room.new(room_index)   #.merge(user_id: current_user.id))
   if @room.save
   flash[:notice]="新規登録しました"
    redirect_to rooms_path#room_list_room_path(@room.id)
   else
    redirect_to new_room_path
   end
  #@reservation=Reservation.new(params.permit(:start, :end, :persons, :user_id, :room_id, :room_name, :money)) #showが予約画面の時に使用
  #if 
    #flash[:notice]="予約内容を確認しました。"
   # redirect_to reservations_confirm_path(@reservation.id)
  #else
    #redirect_to room_path(@room.id)
  #end 
  end
  
  def show
   #@user=User.where(id: params[current_user.id])#Userモデルオブジョクトの一つの配列（id指定した一つ）を渡す書き方。
   #@reservation=Reservation.new
   #@room=Room.find(params[:id])#where(id: params[:id])
   #@money=Room.where(id: params[:id])#eachの際に記述
  end
  
  def edit
  end
  def update
  
  end
  def destroy
  end
end



private

def room_index
  params.require(:room).permit(:roompic, :roomname, :roominfo, :money, :area, :user_id)#.merge(user_id: current_user.id)
end