# frozen_string_literal: true
# Description/Explanation of CocktailController
class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
  def show
    @cocktail = Cocktail.find(params[:id])
  end
  def new
    @cocktail = Cocktail.new
  end
  def create
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.save
    redirect_to root_path
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to root_path
  end
  private
  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
