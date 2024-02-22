class BookmarksController < ApplicationController
  def new
    # Initialize a new bookmark object for the form
    @bookmark = Bookmark.new
  end

  def create
    # Create a new bookmark from form parameters
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(params[:id]), notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  def destroy
    # Find the bookmark by ID and destroy it
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, notice: 'Bookmark was successfully destroyed.'
  end

  private

  # Strong parameters for bookmark
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
