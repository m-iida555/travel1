class PasswordsController < ApplicationController
  
def index
  @passwords=User.all
end

def new
  @password=User.new
  @login=User.new
end 

def create
  @password=User.new(params.require(:user).permit(:name,:email,:password,:password))
  if @password.save
    flash[:notice]="登録しました"
    redirect_to edit_password_path(password.id)
  else 
    render"new"
  end
end

def show
  @password=User.find(params[:id])
  @user=User.find(params[:id])
end

def edit
  @password=User.find(params[:id])
  @user=User.find(params[:id])

end

def update
    @password=User.find(params[:id])
    if @password.update_with_password(params.require(:user).permit(:email,:password,:password_confirmation,:current_password))
    flash[:notice]="更新しました。"
    redirect_to password_path(@password.id)
  else
    render"edit"
  end
end

def destroy
end


end
