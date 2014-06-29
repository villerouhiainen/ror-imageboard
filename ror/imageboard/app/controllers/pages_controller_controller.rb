class PagesControllerController < ApplicationController
  def index
    @topics = Topic.all
    @boards = Board.all
    @comments = Comment.all
  end
end
