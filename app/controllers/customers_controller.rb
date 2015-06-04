class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    Customer.create(customer_params)
    redirect_to customers_path
  end


  private

  def customer_params
    params.require(:customer).permit(:cname, :cpphone, :csaddr, :ccity, :cstate, :czip, :cemail)
  end


end
