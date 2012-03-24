class CreateTestSuites < ActiveRecord::Migration
  def change
    create_table :test_suites do |t|
      t.string :title
      t.text :description
      t.references :project

      t.timestamps
    end
    add_index :test_suites, :project_id
  end
end
