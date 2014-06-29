class TopicsController < ApplicationController
    def index
        @topics = Topic.all
    end

    def show
        @topic = Topic.find_by(id: params[:id])
    end

    def new
        @topic = Topic.new
    end

    def create
        @topic = Topic.new(topic_attributes)
        @topic.save
        redirect_to board_topics_path
    end

    def edit
        @topic = Topic.find_by(id: params[:id])
    end
    
    def topic_attributes
        params.require(:topic).permit(:title, :content, :board_id, :file)
    end

    def update
        @topic = Topic.find_by(id: params[:id])
        if @topic.update_attributes(topic_attributes)
            redirect_to board_topic_path, :notice => "Your topic has been updated"
        else
            render "edit"
        end
    end

    def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy
        redirect_to board_topics_path, :notice => "Your topic has been deleted"
    end
    
end

    
