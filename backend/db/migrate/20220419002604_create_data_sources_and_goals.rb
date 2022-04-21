class CreateDataSourcesAndGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :data_sources_goals do |t|
      t.belongs_to :data_source
      t.belongs_to :goal

      t.timestamps
    end
  end
end
