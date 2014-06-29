class CreateRelationsWithBoardsAndTopics2 < ActiveRecord::Migration
  def change
    add_reference :topics, :board, index: true
  end
end
