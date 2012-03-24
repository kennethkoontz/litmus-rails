class TestSuite < ActiveRecord::Base
  belongs_to :project
  has_many :test_cases
end
