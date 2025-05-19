class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      @lists = List.all
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def destroy
    @list = List.find(params[:id])
    @list.delete
    redirect_to root_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
