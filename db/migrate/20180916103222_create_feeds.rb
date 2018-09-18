class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.text :title, null: false
      t.text :url, null: false

      t.timestamps
    end
  end
end
