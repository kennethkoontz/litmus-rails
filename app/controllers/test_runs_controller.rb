class TestRunsController < ApplicationController

  def index
    @test_runs = TestRun.all
  end

  # GET /test_suites/1/test_runs/new
  def new
    @test_suite = TestSuite.find(params[:id])
  end

  # POST /test_suites/1/test_runs/create
  def create
    runs = []
    params.each do |k, v|
      runs << {:test_case_id => k.match('\d+')[0]} if k.include?('test_case_')
    end

    if TestRun.create runs
      redirect_to '/test_runs/', notice: "Test Run was successfully created." 
    else
      render action: "new"
    end
  end

end
