class TestCase < ActiveRecord::Base
  belongs_to :test_suite

  define_index do
    indexes title
    indexes setup
    indexes test_plan
    indexes expected_results
    indexes 

    has test_suite_id, created_at
  end

end
