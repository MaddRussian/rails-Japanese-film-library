class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    Rails.logger.info "Bookmark params: #{params.inspect}"
    @bookmark = @list.bookmarks.new(bookmark_params)

    if @bookmark.save
      redirect_to list_path(@list), notice: "Film added to #{@list.name}"
    else
      Rails.logger.error "Bookmark creation failed: #{@bookmark.errors.full_messages.join(', ')}"
      redirect_to list_path(@list), alert: "Failed to add film: #{@bookmark.errors.full_messages.join(', ')}"
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:film_id)
  end
end
