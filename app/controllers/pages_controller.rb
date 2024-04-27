class PagesController < ApplicationController
  def home
    render :home
  end
  def index
    @recipes = Recipe.all
    render :index
  end
end
