class BrandsController < ApplicationController

  def new
    @brand = Brand.new
  end

  def create

    @brand = current_user.brands.new( brand_params )

    if @brand.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def brand_params
      params.require(:category).permit([:name])
  end
end
