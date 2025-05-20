class BookmarksController < ApplicationController
  def create
    # @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      puts "Created Successfully"
      redirect_to root_path, notice: "Bookmark created successfully."
    else
      raise
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name, :photo)
  end
end
