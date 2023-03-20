class Public::MaterialsController < ApplicationController
  def update
  end

  def create
     @material = Meterials.new(material_params)
   if @material.save!
   redirect_to public_clothe_path
  end

  def edit
  end
  
  private
  def material_params
  params.require(:material).permit(:name)
  end
end
