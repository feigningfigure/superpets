class SuperpetController < ApplicationController

  def index
    @superpets = Superpet.all
  end

  def create

  end

  def update

  end

  def destroy
    @superpet = Superpet.find(params[:superpet_id])
    @superpet.destroy
    redirect_to root_path
  end

  def show

  end

  def edit

  end

end
