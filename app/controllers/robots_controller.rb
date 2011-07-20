class RobotsController < ApplicationController

  def index
    @search = Robot.includes(:parts).search(params[:search])
    @robots = @search.paginate(:page => params[:page])
  end

end
