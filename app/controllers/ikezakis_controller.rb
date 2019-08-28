class IkezakisController < ApplicationController
  before_action :move_to_index, except: [:index, :list]

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

  def about
  end

  def list
    @ikezakis = Ikezaki.all
  end

  private
  def create_params
    params.require(:ikezaki).permit(:name, :occupation, :love, :birth1, :birth2, :birth3, :grand_prix, :height, :weight, :salary,:balance, :password, :tip, :sex).merge(user_id: current_user.id)
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
