class GossipsController < ApplicationController
  
  def new

  end

  def create
  @gossip = Gossip.new(content:params[:content], title:params[:title],user_id:11) # avec xxx qui sont les données obtenues à partir du formulaire

      if @gossip.save # essaie de sauvegarder en base @gossip
    # si ça marche, il redirige vers la page d'index du site
    redirect_to root_path, notice: "Le potin '#{@gossip.title.capitalize}' a bien été créé ! Félicitation"
      else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    flash.now[:messages] = @gossip.errors.full_messages
      render new_gossip_path
      end
  end 

  def user_show
    @gossip = Gossip.find(params[:id])
  end

end
