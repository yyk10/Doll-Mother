class Public::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end




 private
  def user_params
  params.require(:user).permit(:email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :telephone_number, :is_deleted, :address)
  end
end
