class WorkordersController < ApplicationController

  def index
    @workorders = Workorder.all
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @workorder = Workorder.new
  end

  def create
    Workorder.create(workorder_params)
    redirect_to customer_workorders_path
  end

  private

  def workorder_params
    params.require(:workorder).permit(:cdmake, :cdmodel, :cdaccr, :cdesc, :cdpass, :ccat)
  end

end
