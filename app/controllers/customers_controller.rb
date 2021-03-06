class CustomersController < ApplicationController
  before_action :authenticate_tech!, :only => [:index, :new, :create, :show, :update, :destroy]

  def index
    @customers = Customer.all
    @customers = Customer.search(params[:search])
  end

  def new
    @customer = Customer.new
  end

  def create
    current_tech.customers.create(customer_params)
    redirect_to customers_path
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(customer_params)
    redirect_to customers_path
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:cname, :cpphone, :csaddr, :ccity, :cstate, :czip, :cemail)
  end


end
