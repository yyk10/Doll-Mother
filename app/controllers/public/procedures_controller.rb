class Public::ProceduresController < ApplicationController
  
  def update
    
    
  end

  def create
    @procedure = Procedures.new(procedure_params)
   if @procedure.save!
   redirect_to public_clothe_path
   end
  end

  def edit
  end
  
  private
  def procedure_params
  params.require(:procedure).permit(:body, :image)
  end
  
end
