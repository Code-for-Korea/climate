class CreateDataSourcesAndTools < ActiveRecord::Migration[7.0]
  def change
    create_table :data_sources_tools do |t|
      t.belongs_to :data_source
      t.belongs_to :tool

      t.timestamps
    end
  end
end
