class AddDeltaToTestCase < ActiveRecord::Migration
  def change
    add_column :test_cases, :delta, :boolean, :default => true, :null => false
  end
end
