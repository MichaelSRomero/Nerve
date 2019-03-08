class DaresController < ApplicationController

  def index
  end

  def show
    @dare = Dare.find(params[:id])
  end

  def new
    @dare = Dare.new
  end

  def create
  end
  
end
