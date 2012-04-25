class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :body
      t.references :forum

      t.timestamps
    end
    add_index :topics, :forum_id
  end
end
