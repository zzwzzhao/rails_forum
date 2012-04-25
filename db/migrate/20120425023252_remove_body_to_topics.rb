class RemoveBodyToTopics < ActiveRecord::Migration
  def up
    remove_column :topics, :body
      end

  def down
    add_column :topics, :body, :text
  end
end
