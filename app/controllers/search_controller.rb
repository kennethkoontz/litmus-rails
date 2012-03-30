class SearchController < ApplicationController

  def index
    projects = Project.search params[:search]
    test_suites = TestSuite.search params[:search]
    test_cases = TestCase.search params[:search]
    @results = projects.append(test_suites)

  end

end
