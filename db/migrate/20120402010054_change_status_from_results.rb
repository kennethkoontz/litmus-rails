class ChangeStatusFromResults < ActiveRecord::Migration
  def change
    change_column :results, :status, :string, :default => 'untested'
  end
end
