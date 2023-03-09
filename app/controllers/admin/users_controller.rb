class Admin::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
   @users = User.all
   @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update (user_params)
      #flash[:success] = "User was successfully updated"
    redirect_to admin_user_path
    #else
    #if @item.update(item_params)
     #   redirect_to admin_item_path(@item.id)
    else
    render :edit #, status: :unprocessable_entity
    end
  end

  private
  def user_params
  params.require(:user).permit(:email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :address, :telephone_number, :is_deleted)
  end
end
