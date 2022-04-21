class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.belongs_to :policy, null: false, foreign_key: true
      t.text :detail

      t.timestamps
    end
  end
end
