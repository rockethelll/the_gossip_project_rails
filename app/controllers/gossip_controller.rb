class GossipController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content])
    if @gossip.save
      flash[:notice] = 'Potin sauvegardé'
      redirect_to '/'
    else
      flash[:alert] = 'Erreur : impossible de sauvegarder le potin'
      render :new
    end
  end
end
