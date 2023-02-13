class AuthorController < ApplicationController
  def author
    @user = User.find(params[:id])
    @city = City.all
  end
end
