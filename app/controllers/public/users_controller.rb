class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
 def index
     @user = User.new
 end
 
 def withdraw
    @user = User.find(params[:id])
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @user.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
 end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
     if @user.update(user_params)
      flash[:update] = "会員情報を編集しました."
      redirect_to public_user_path(@user.id)
     else
      render 'edit'
     end

  end




 private
  def user_params
  params.require(:user).permit(:email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :telephone_number, :is_deleted, :address)
  end
end
