class WorkordersController < ApplicationController
  before_action :authenticate_tech!, :only => [:index, :new, :create, :show, :update, :destroy]

  def index
    @workorders = Workorder.all
    @workorders = Workorder.search(params[:search])
  end

  def new
    @workorder = Workorder.new
    @customer = Customer.find(params[:customer_id])
  end

  def create
    current_tech.workorders.create(workorder_params)
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
    params.require(:workorder).permit(:cdmake, :cdmodel, :cdaccr, :cdesc, :cdpass, :ccat, :customer_id)
  end

end
