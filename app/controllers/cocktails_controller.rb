class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    set_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@coktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permits(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
