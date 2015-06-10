class WorkordersController < ApplicationController

  def index
    @workorders = Workorder.all
  end

  def new
    @workorder = Workorder.new
  end

end
