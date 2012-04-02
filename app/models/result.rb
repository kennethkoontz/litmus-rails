class Result < ActiveRecord::Base
  STATUSES = [['Passed', 'passed'], [ 'Failed', 'failed'], ['Untested','untested'], ['Blocked', 'blocked'], ['Retest', 'retest']]
  belongs_to :test_run

  def self.last_updated()
    last_updated = find(:first, :order =>  "updated_at DESC")
    if last_updated
      return last_updated.status
    else
      return 'untested'
    end
  end

end
