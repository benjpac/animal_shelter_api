class AnimalsController < ApplicationController
  def index
    @animals = Animal.all 
    # search_params(params).each do |key, value|
    #   @animals = @animals.public_send(key, value) if value.present?
    # end
    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update!(animal_params)
    json_response(@animal, :ok)
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
  end

  private

  def animal_params
    params.permit(:name, :species, :age)
  end

  def search_params
    params.slice(:name, :species, :age)
  end
end
