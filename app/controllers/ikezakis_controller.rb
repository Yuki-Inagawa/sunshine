class IkezakisController < ApplicationController

  def index
    @ikezakis = Ikezaki.all
  end

  def show
    @ikezaki = Ikezaki.find(params[:id])
  end

  def new
    @ikezaki = Ikezaki.new
  end

  def create
    Ikezaki.create(create_params)
    redirect_to root_path
  end

  private
  def create_params
    params.require(:ikezaki).permit(:name, :occupation, :love, :birth1, :birth2, :birth3, :grand_prix, :height, :weight, :salary,:balance, :password, :tip)
  end
end
