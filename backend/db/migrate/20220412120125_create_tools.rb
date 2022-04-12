class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :title
      t.belongs_to :goal, null: false, foreign_key: true
      t.text :detail
      t.string :key_indicator
      t.string :key_indicator_unit
      t.decimal :indicator_2016
      t.decimal :indicator_2017
      t.decimal :indicator_2018
      t.decimal :indicator_2019
      t.decimal :indicator_2020
      t.decimal :indicator_2021
      t.decimal :indicator_2022
      t.decimal :indicator_goal_2030
      t.string :tool_data_status
      t.text :url

      t.timestamps
    end
  end
end
