class CreatePolicies < ActiveRecord::Migration[7.0]
  def change
    create_table :policies do |t|
      t.string :title
      t.string :department
      t.date :released
      t.text :detail
      t.text :url

      t.timestamps
    end
  end
end
