class ChangeBoardIdFormatInTopics < ActiveRecord::Migration
  def change
    change_column :topics, :board_id, :integer
  end
end
