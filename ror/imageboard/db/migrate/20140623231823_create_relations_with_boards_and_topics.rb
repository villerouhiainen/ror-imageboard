class CreateRelationsWithBoardsAndTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :board_id
    #add_reference :topics, :board, index: true
  end
end
