class TestCase < ActiveRecord::Base
  belongs_to :test_suite

  define_index do
    indexes title
    indexes setup
    indexes test_plan
    indexes expected_results
    indexes test_suite.title, :as => test_suite_title
  end

end
