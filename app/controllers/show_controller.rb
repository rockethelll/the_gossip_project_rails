class ShowController < ApplicationController

  def show
    @show = Gossip.find(params[:id])
    @user = User.all
  end

end