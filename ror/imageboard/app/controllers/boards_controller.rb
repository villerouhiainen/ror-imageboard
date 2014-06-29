class BoardsController < ApplicationController
    def index
        @topics = Topic.all
        @boards = Board.all
    end

    def show
        @topic = Topic.find_by(id: params[:id])
        @board = Board.find_by_abbr!(params[:id])
    end

    def new
        @board = Board.new
    end

    def create
        @board = Board.new(board_attributes)
        @board.save
        redirect_to boards_path
    end

    def edit
        @board = Board.find_by_abbr!(params[:id])
    end
    
    def board_attributes
        params.require(:board).permit(:title, :abbr)
    end

    def update
        @board = Board.find_by_abbr!(params[:id])
        if @board.update_attributes(board_attributes)
            redirect_to boards_path, :notice => "Your board has been updated"
        else
            render "edit"
        end
    end

    def destroy
        @board = Board.find_by_abbr!(params[:id])
        @board.destroy
        redirect_to boards_path, :notice => "Your board has been deleted"
    end
    
end
