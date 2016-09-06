class SightingsController < ApplicationController
  def new
    @species_instance = Species.find(params[:species_id])
    @sighting = @species_instance.sightings.new
  end

  def create
    @species_instance = Species.find(params[:species_id])
    @sighting = @species_instance.sightings.new(sighting_params)
    if @sighting.save
      redirect_to species_path(@sighting.species)
    else
      render :new
    end
  end

  def edit
    @species_instance = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    render :edit
  end

  def update
    @species_instance = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      redirect_to species_path(@sighting.species)
    else
      render :edit
    end
  end

  def destroy
    @species_instance = Species.find(params[:species_id])
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to species_path(@species_instance)
  end

  private
  def sighting_params
    params.require(:sighting).permit(:date, :latitude, :longitude)
  end
end
