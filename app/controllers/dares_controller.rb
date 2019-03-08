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
    @dare = Dare.create(dare_params)

    if @dare.valid?
      redirect_to dares_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_dare_path
    end
  end

  private

  def dare_params
    params.require(:dares).permit(:content, :category_id)
  end

end
