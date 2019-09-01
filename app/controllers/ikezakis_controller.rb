class IkezakisController < ApplicationController
  before_action :move_to_signup, except: [:index, :list,:show,:about,]

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
    @ikezaki= Ikezaki.new(create_params)
    if @ikezaki.valid?
      @ikezaki.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def about
  end

  def list
    @ikezakis = Ikezaki.all
  end

  def destroy
    ikezaki = Ikezaki.find(params[:id])
    # if ikezaki.user_id == current_user.id
    #   ikezaki.destroy
    # end
  end

  private
  def create_params
    params.require(:ikezaki).permit(:name, :occupation, :love, :birth1, :birth2, :birth3, :grand_prix, :height, :weight, :salary,:balance, :password, :tip, :sex).merge(user_id: current_user.id)
  end
  def move_to_signup
    redirect_to controller: 'devise/sessions', action: 'new' unless user_signed_in?
    flash[:notice] = "ログインまたは新規登録をお願いします"
  end
end
