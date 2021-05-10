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
    @gossips = Gossip.find{params[:id]}
   end
 

end
