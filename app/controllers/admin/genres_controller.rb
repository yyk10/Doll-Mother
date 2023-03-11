class Admin::GenresController < ApplicationController
 def index
   @genres = Genre.all.order("created_at DESC")
   @genre = Genre.new
   @types = Type.all.order("created_at DESC")
   @type = Type.new
 end

 def create
   @genre = Genre.new(genre_params)
   if @genre.save!
   flash[:notice] = "Genre was successfully created"
   redirect_to admin_genres_path
   end
   
   @type = Type.new(type_params)
   if @type.save!
   redirect_to admin_genres_path,notice: 'Type was successfully created'
   end
   
 end

 def edit
   @genre = Genre.find(params[:id])
 end

 def update
    @genre = Genre.find(params[:id])
    @genre.update (genre_params)
    redirect_to admin_genres_path, notice: 'Genre information updated successfully'
 end

 def destroy
   @genre = Genre.find(params[:id])
   @genre.destroy
   redirect_to admin_genres_path,notice: 'Genre information destroy successfully'
 end

 private
 def genre_params
  params.require(:genre).permit(:name, :type_id)
 end
 
 def type_params
  params.require(:type).permit(:name)
 end

end
