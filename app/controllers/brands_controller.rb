class BrandsController < ApplicationController

  def new
    @brand = Brand.new
  end

  def create

    @brand = Brand.new( brand_params )

    if @brand.save
      redirect_to new_item_path
    else
      render :new
    end
  end

  private

  def brand_params
      params.require(:brand).permit([:name])
  end
end
