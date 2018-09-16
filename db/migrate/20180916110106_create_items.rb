class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :title
      t.text :url
      t.timestamp :published_at
      t.references :feed, foreign_key: true

      t.timestamps
    end
  end
end
