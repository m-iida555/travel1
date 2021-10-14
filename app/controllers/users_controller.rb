class UsersController < ApplicationController
  def index
    @users=User.all
  end
  
  def new
    @user=User.new
    
  end


#↓は新規登録の画面用
  def create
    user=User.new(params.permit(:name,:email,:password,:password_confirmation))
    if  user.save
      session[:user_id] = user.id
      flash[:notice]="新規登録しました"
      redirect_to edit_user_path(user.id)
    else
      flash[:notice]="登録失敗"
      render"new"
    end
  end

  def show
    @user=User.find(params[:id])
    @password=User.find(params[:id])
  end

  def edit
    @user=User.find(params[:id])
    @password=User.find(params[:id])

  end
  
  def update
   @user=User.find(params[:id])
    if @user.update(params.require(:user).permit(:img,:name,:introduction))
      flash[:notice]="更新が完了しました"
      redirect_to edit_user_path(@user.id)
    else
      render"edit"
    end
  end
  
  
  
  
  def destroy
  end
end
