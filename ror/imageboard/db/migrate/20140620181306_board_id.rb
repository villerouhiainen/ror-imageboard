class BoardId < ActiveRecord::Migration
  def change
    add_column :topics, :board_id,  :string
  end
end
