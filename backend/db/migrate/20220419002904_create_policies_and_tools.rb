class CreatePoliciesAndTools < ActiveRecord::Migration[7.0]
  def change
    create_table :policies_tools do |t|
      t.belongs_to :policy
      t.belongs_to :tool

      t.timestamps
    end
  end
end
