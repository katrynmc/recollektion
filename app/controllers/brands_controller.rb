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
  def edit
    @brand = Brand.find(params[:id])
  end

  def update
    @brand = Brand.find(params[:id])
    @Brand.update(brand_params)

    if @brand.save
      flash[:notice] = "Your brand name was succesfully updated"
      redirect_to :back
    else
      render :edit
    end
  end
  private

  def brand_params
      params.require(:brand).permit([:name])
  end

end
