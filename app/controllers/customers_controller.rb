class CustomersController < ApplicationController
  before_action :authenticate_tech!, :only => [:index, :new, :create]

  def index
    @customers = Customer.all
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

  private

  def customer_params
    params.require(:customer).permit(:cname, :cpphone, :csaddr, :ccity, :cstate, :czip, :cemail)
  end


end
