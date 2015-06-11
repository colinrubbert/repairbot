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

  def show
    @customer = Customer.find(params[:customer_id])
    @workorder = Workorder.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:customer_id])
    @workorder = Workorder.find(params[:id])
  end

  private

  def workorder_params
    params.require(:workorder).permit(:cdmake, :cdmodel, :cdaccr, :cdesc, :cdpass, :ccat)
  end

end
