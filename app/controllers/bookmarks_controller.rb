class BookmarksController < ApplicationController

    def new
        @bookmark = Bookmark.new
    end

    def show
        @bookmarks = Bookmark.all
        @bookmark = @bookmarks.find(params[:id])
    end

    def create
        @bookmark = Bookmark.new(bookmark_params)
       if @bookmark.save
        redirect_to list_path(@bookmark.list)
       else
        render :new, status: :unprocessable_entity
       end
    end

    def destroy
        @bookmark.destroy
    end


    private

    def bookmark_params
        params.require(:bookmark).permit(:comment, :movie_id, :list_id)
    end

    def find_list
        @list = List.find(params[:id])
    end
        
end
