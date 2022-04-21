class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :depth
      t.text :detail
      t.string :data_status
      t.decimal :emission_2016
      t.decimal :emission_2017
      t.decimal :emission_2018
      t.decimal :emission_2019
      t.decimal :emission_2020
      t.decimal :emission_2021
      t.decimal :emission_2022
      t.decimal :emission_goal_2030

      t.timestamps
    end
  end
end
