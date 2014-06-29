class CommentsController < ApplicationController

    def comment_attributes
        params.require(:comment).permit(:body)
    end
    
    def show
        @topic = Topic.find_by(id: params[:id])
        @comment = Comment.find_by_id(params[:id])
    end
    
    def new
        @comment = Comment.new
        @topic = Topic.find_by(id: params[:id])
    end
    
    def create
        @topic = Topic.find_by(id: params[:id])
        @comment = @topic.comments.create!(comment_attributes)
        redirect_to board_topics_path
    end
end
