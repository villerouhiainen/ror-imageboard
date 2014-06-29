class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :topic, index: true
      t.text :body

      t.timestamps
    end
  end
end
