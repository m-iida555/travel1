class ApplicationController < ActionController::Base
  #以下手入力済み
  #https://qiita.com/salvage0707/items/d3ddc889458ac186e62e を参照
  #https://qiita.com/ryokky59/items/71b5a853989721b89c6e
  
  protect_from_forgery with: :exception
  # ログイン済ユーザーのみにアクセスを許可する
  before_action :authenticate_user!,except: [:top]  #except以下を除き、ログインしていないページに遷移しようとした場合は、ログインページに飛ばされる設定
  # deviseコントローラーにストロングパラメータを追加する 
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters　#deviseの初期ダウンロード時にデータをモデルに渡すストロングパラメータの設定がされていないものがあるので、下記の様に追記する必要がある。
     # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :introduction])
    
    devise_parameter_sanitizer.permit(:sign_in, keys: [:remember_created_at])
    
  end
  
  def after_sign_in_path_for(resource)
    edit_user_path(id: current_user) # ログイン後に遷移するpath
  end

  def after_sign_out_path_for(resource)
    reservations_top_path # ログアウト後に遷移するpath
  end
  
end
