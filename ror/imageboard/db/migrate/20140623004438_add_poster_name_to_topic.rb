class AddPosterNameToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :poster_name, :string
  end
end
