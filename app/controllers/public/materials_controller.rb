class Public::MaterialsController < ApplicationController
  def update
  end

  def create
     @material = Meterials.new(material_params)
   if @material.save!
   redirect_to new_public_clothe_path
   end
  end

  def edit
  end
  
  def destroy
  end
  
  private
  def material_params
  params.require(:material).permit(:name)
  end
end
