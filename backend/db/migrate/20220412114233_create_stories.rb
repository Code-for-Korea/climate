class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :press
      t.string :author
      t.date :published
      t.text :url

      t.timestamps
    end
  end
end
