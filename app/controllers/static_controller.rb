class StaticController < ApplicationController
  def team
  end

  def contact
  end

  def welcome
  end

  def home
    @gossips = Gossip.all 
  end

  def show
   
  end
 
  def user_show
    @user = User.find(params[:id])
  end

 
end
