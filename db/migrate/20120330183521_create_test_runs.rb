class CreateTestRuns < ActiveRecord::Migration
  def change
    create_table :test_runs do |t|
      t.references :test_case
      t.references :result

      t.timestamps
    end
    add_index :test_runs, :test_case_id
  end
end
