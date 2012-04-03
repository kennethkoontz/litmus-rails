class ResultsController < ApplicationController

  def create
    p = {
      'test_run_id' => params[:test_run_id],
      'status' => params[:status]
    }
    result = Result.create!(p)
    render :json => result
  end

end
