class LoginsController < ApplicationController
  
  def new
  end
  
  
  
  def create
    login = User.find_by_id(params[:email])
    if login && login.authenticate(params[:password])
    session[:user_id]=login.id
    redirect_to new_password_path(@password.id)
    else
    flash[:notice]="情報をまちがえています。"
    render"new"
    end
  
  end
  
  
end