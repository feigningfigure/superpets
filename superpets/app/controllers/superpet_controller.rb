class SuperpetController < ApplicationController

  def index

  end

  def create

  end

  def update

  end

  def destroy

  end

  def show
    @superpet = Superpet.find_by_id(params[:id])
  end

  def edit

  end

end
