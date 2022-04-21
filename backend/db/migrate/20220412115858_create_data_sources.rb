class CreateDataSources < ActiveRecord::Migration[7.0]
  def change
    create_table :data_sources do |t|
      t.string :title
      t.text :detail
      t.text :url

      t.timestamps
    end
  end
end
