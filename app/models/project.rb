class Project < ActiveRecord::Base
  has_many :test_suites

  define_index do
    indexes description
  end
end
