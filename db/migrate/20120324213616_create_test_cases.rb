class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.string :title
      t.text :setup
      t.text :test_plan
      t.text :expected_results
      t.references :test_suite

      t.timestamps
    end
    add_index :test_cases, :test_suite_id
  end
end
