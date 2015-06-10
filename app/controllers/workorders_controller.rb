class WorkordersController < ApplicationController

  def index
    @workorders = Workorder.all
  end

end
