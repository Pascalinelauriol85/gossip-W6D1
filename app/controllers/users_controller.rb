class UsersController < ApplicationController

  def new
    @user = User.new
    @cities = cities_list
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :description, :age, :email, :password, :password_confirmation, :city_id)
    @user = User.new(user_params) # avec xxx qui sont les données obtenues à partir du formulaire

    if @user.save # essaie de sauvegarder en base @gossip
  # si ça marche, il redirige vers la page d'index du site
    session[:user_id] = @user.id
    redirect_to root_path, notice: "Ton inscription :'#{@user.first_name.capitalize}' a bien été réalisée ! Félicitation "
    else
  # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    flash[:messages] = @user.errors.full_messages
    @cities = cities_list
    render :new
    end
  end

  def show 
    @user=User.find(params[:id])
  end 

  def cities_list
    cities =[]
    City.all.each {|city| cities << city}
    return cities
  end


end