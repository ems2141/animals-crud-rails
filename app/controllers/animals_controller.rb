class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def create
    @animal = Animal.create(name: params[:name])
    redirect_to '/animals'
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.name = params[:name]
    @animal.save
    redirect_to "/animals/#{@animal.id}"
  end

end