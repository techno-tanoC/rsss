class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :title, null: false
      t.text :url, null: false
      t.boolean :checked, null: false, default: false
      t.references :feed, foreign_key: true
      t.timestamp :published_at, null: false

      t.timestamps
    end
  end
end
