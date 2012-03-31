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
    puts params

    redirect_to '/test_runs/', notice: "Test Run was successfully created." 
  end
    

end
