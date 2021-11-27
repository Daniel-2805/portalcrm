class LeafletsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @leaflets = Leaflet.all
  end

  def show
    @leaflet = Leaflet.find(param[:id])
  end

  def new
    @leaflet = Leaflet.new
  end

  def create
    @leaflet = Leaflet.new(leaflet_params)
    @leaflet.user = current_user
    if @leaflet.save
      redirect_to leaflets_path       
    else
      render :new
    end
    
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private

  def leaflet_params
    params.require(:leaflet).permit(:name, :lastname, :fone, :email, :status)
  end
end
