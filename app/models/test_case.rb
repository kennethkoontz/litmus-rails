class TestCase < ActiveRecord::Base
  belongs_to :test_suite
  belongs_to :project

  define_index do
    indexes title
    indexes setup
    indexes test_plan
    indexes expected_results
    indexes test_suite.title, :as => 'test_suite_title'
    indexes test_suite.description, :as => 'test_suite_description'
    indexes project.title, :as => 'project_title'
    indexes project.description, :as => 'project_description'
  end

end
