class WineriesController < ApplicationController
  def index
    respond_to do |format|
      format.json do
        @wineries = Winery.all.as_json
        render json: @wineries
      end
    end
  end
end
