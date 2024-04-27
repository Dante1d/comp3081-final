class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
