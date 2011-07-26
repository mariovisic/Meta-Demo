class RobotsController < ApplicationController

  def index
    @search = Robot.search(params[:search])
    @robots = @search.select('DISTINCT robots.*').paginate(:page => params[:page])
  end

end
