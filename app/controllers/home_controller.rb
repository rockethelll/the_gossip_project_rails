class HomeController < ApplicationController
  def home 
  end

  def welcome
    @first_name = params[:first_name]
    @gossip = Gossip.all
    @user = User.all
  end
end
