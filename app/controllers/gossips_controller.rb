class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end
  def index
    
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      flash[:notice] = 'Potin sauvegardé'
      redirect_to gossip_path(@gossip.id)
    else
      flash[:alert] = 'Erreur : impossible de sauvegarder le potin'
      render :new
    end
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to gossip_path(@gossip.id)
  end

  def show
    @gossip = Gossip.find(params[:id])
    @user = User.all
    @city = City.all
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content, :id)
  end
end
