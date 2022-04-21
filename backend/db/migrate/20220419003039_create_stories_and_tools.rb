class CreateStoriesAndTools < ActiveRecord::Migration[7.0]
  def change
    create_table :stories_tools do |t|
      t.belongs_to :story
      t.belongs_to :tool

      t.timestamps
    end
  end
end
