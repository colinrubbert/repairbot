class WorkordersController < ApplicationController

  def index
    @workorders = Workorder.all
  end

  def new
    @workorder = Workorder.new
  end

  def create
    #current_user.workorders.build(workorder_params)
    @workorder = Workorder.create(workorder_params)
    redirect_to workorders_path
  end

  def show
    @workorder = Workorder.find(params[:id])
  end

  def edit
    @workorder = Workorder.find(params[:id])
  end

  def update
    @workorder = Workorder.find(params[:id])
    @workorder.update_attributes(workorder_params)
    redirect_to workorders_path
  end

  def destroy
    @workorder = Workorder.find(params[:id])
    @workorder.destroy
    redirect_to workorders_path
  end

  private

  def workorder_params
    params.require(:workorder).permit(:cdmake, :cdmodel, :cdaccr, :cdesc, :cdpass, :ccat)
  end

end
