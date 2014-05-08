class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def create
    @animal = Animal.create(name: params[:name])
    redirect_to '/animals'
  end

end