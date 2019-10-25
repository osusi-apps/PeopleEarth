class ShopsController < ApplicationController
  def index
    @shops=Shop.all
  end
  def show
    @shopDetails=Shop.all
  end
end
