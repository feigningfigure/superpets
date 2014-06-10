class SuperpetController < ApplicationController

  def index

  end

  def create
    @superpet = Superpet.new
  #   new_superpet = Superpet.create({name: params["name"], superpower: params["superpower"]})
  #   respond_to do |format|
  #     format.html { render html: index }
  #     format.json { render json: new_superpet }
  end

  def update
    @superpet = Superpet.find(params[:id])
    if @superpet.update_attributes(params[:superpet])
      redirect_to :action => 'show', :id => @superpet
    else
      render :action => 'edit'
    end
  end

  def destroy

  end

  def show
    @superpet = Superpet.find_by_id(params[:id])
  end

  def edit

  end

    private

  def superpet_params
    params.require(:superpet).permit(:name, :superpower, :type, :strength)
  end

end
