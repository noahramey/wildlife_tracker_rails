class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render :index
  end

  def show
    @species_instance = Species.find(params[:id])
    render :show
  end

  def new
    @species_instance = Species.new
    render :new
  end

  def create
    @species_instance = Species.new(species_instance_params)
    if @species_instance.save
      redirect_to species_index_path
    else
      render :new
    end
  end



  private
  def species_instance_params
    params.require(:species).permit(:name)
  end
end
