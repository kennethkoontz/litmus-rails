class TestSuite < ActiveRecord::Base
  belongs_to :project
  has_many :test_cases

  define_index do
    indexes title
    indexes description
  end
end
