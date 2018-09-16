class AddUniqueIndexToItems < ActiveRecord::Migration[5.2]
  def change
    add_index :items, [:url, :feed_id], unique: true
  end
end
