class ClassificationsController < ApplicationController

  def new
    @plant = Plant.find(params[:plant_id])
    @classification = Classification.new
  end

  def create
    plant = Plant.find(params[:plant_id])
    tags = Tag.where(id: params[:classification][:tag])
    tags.each do |tag|
      classification = Classification.new(plant:, tag:)
      classification.save
    end
    redirect_to garden_path(plant.garden)
  end
end
