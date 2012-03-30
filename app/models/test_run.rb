class TestRun < ActiveRecord::Base
  belongs_to :test_case
  has_many :results
end
