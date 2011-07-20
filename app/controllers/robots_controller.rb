class RobotsController < ApplicationController

  def index
    @search = Robot.search(params[:search])
    @robots = @search.paginate(:page => params[:page])
  end

end
