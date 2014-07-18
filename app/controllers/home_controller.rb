class HomeController < ApplicationController
  def index
  end

  def brands
    @brands = params[:id] ? Brands.by_id(params[:id]) : Brands.all
  end

  def retailers
    @retailers = params[:id] ? Retailers.by_id(params[:id]) : Retailers.all
  end

  def products
    # ...
  end
end
