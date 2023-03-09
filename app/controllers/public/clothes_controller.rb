class Public::ClothesController < ApplicationController
  def index
  end

  def show
  end

  def new
   @clothe = Clothe.new
  end
  
  def create
    @clothe = Clothe.new(clothe_params)
    @clothe.user_id = current_user.id
    @user = @clothe.user
   if @clothe.save
       flash[:notice] = "投稿されました"
       redirect_to public_clothe_path(@clothe.id)
   else
      @clothes = Clothe.all
      render :index
  
   end
  end

  def edit
  end
  
  def update
  end

  def destroy
  end
  
  private
  
  def clothe_params
  params.require(:clote).permit(:name, :introduction, :making_time, :point, :image)
  end
end
