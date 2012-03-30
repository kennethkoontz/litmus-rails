class SearchController < ApplicationController

  def index
    @results = TestCase.search params[:search]
  end

end
