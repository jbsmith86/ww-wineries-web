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
end
