class ShopsController < ApplicationController
  def index
    @shops=Shop.all
  end
  def show
    @shopDetails = Shop.find_by(id: params[:id])
  end
end
