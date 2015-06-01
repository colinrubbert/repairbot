class TechsController < ApplicationController

  def index
    @techs = Tech.all
  end

end
