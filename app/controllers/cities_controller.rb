class CitiesController < ApplicationController
  
  
  def index 
    @city = City.all
  end


  def new
    @city = City.new
  end
  

  def show
    @city = City.find(params[:id])
  end
 
  
 
end
