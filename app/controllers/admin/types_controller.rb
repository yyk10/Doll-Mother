class Admin::TypesController < ApplicationController
def index
   @types = Type.all.order("created_at DESC")
   @type = Type.new
end

def edit
   @type = Type.find(params[:id])
end

def create
   @type = Type.new(type_params)
   @type.save!
   redirect_to admin_types_path,notice: 'Type was successfully created'
end

def update
   @type = Type.find(params[:id])
   @type.update (type_params)
   redirect_to admin_types_path, notice: 'Type information updated successfully'
end

def destroy
   @type = Type.find(params[:id])
   @type.destroy
   redirect_to admin_types_path, notice: 'Type information destroy successfully'
end

private
def type_params
  params.require(:type).permit(:name)
end

end
