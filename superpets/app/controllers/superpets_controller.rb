class SuperpetsController < ApplicationController

  def index
    @superpets = Superpet.all
  end

  def new
    @superpet = Superpet.new
  #   new_superpet = Superpet.create({name: params["name"], superpower: params["superpower"]})
  #   respond_to do |format|
  #     format.html { render html: index }
  #     format.json { render json: new_superpet }
  end

  def create
    pet_hash = params[:superpet]
    pet = Superpet.new
    pet.name = pet_hash[:name]
    pet.kind =  pet_hash[:kind]
    pet.superpower = pet_hash[:superpower]
    pet.strength = pet_hash[:strength].to_i
    pet.save
    redirect_to '/'
  end

  def update
    
  end

  def destroy
    @superpet = Superpet.find(params[:superpet_id])
    @superpet.destroy
    redirect_to root_path
  end

  def show
    @superpet = Superpet.find_by_id(params[:id])
  end

  def edit
    @superpet = Superpet.find(params[:id])
    if @superpet.update_attributes(params[:superpet])
      redirect_to :action => 'show', :id => @superpet
    else
      render :action => 'edit'
    end
  end

    private

  def superpet_params
    params.require(:superpet).permit(:name, :superpower, :type, :strength)
  end

end
