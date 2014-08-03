class WineriesController < ApplicationController

  def index
    respond_to do |format|
      format.json do
        @wineries = Winery.all.as_json
        render json: @wineries
      end
      format.html do
        @wineries = Winery.all
      end
    end
  end

  def new
    @winery = Winery.new
  end

  def edit
    @winery = Winery.find(params[:id])
  end

  def create
    @winery = Winery.create(winery_params)
    if @winery.save
    end
  end

  def update
    @winery = Winery.find(params[:id])
    if @winery.update(alert_params)
    end
  end

  def destroy
    @winery = Winery.find(params[:id])
    if @winery.destroy
    end
  end

  private

  def winery_params
    params.require(:friend).permit(:logo, :name, :address, :city, :state, :zip, :latitude, :longitude, :phone, :website, :twitter, :facebook)
  end
end
