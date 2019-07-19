class IkezakisController < ApplicationController

  def index
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
  end
end
