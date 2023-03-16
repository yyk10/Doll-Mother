class Public::ClothesController < ApplicationController
  def index
  end

  def show
  end

  def new
   @clothe = Clothe.new
   #親モデル.子モデル.buildで子モデルのインスタンス作成
   @materials = @clothe.materials.build
   @procedures = @clothe.procedures.build 
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
      @clothe = Clothe.find(params[:id])
  end

  def update
   @clothe = clothe.find(params[:id])
   @clothe.update (clothe_params)
   redirect_to public_clothe_path(@clothe.id), notice: '投稿に成功しました。'
  end

  def destroy
   @clothe = Clothe.find(params[:id])
   @clothe.destroy
   redirect_to public_clothes_path, notice: 'Type information destroy successfully'
  end

  private

  def clothe_params
  params.require(:clothe).permit(
      :name, 
      :making_time, 
      :point, :image, 
      :short_text, 
      :genre_id, 
      :bookmark_id, 
      :comment_id, 
      :type_id,
      material_attributes: [:name, :_destroy],
      procedures_attributes: [:body, :image, :_destroy])
  end
end
