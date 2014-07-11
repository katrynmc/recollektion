class CategoriesController < ApplicationController

  def index
     @categories = Category.order(name: :desc)
  end

  def new
    @category = Category.new
  end

  def create

    @category = current_user.categories.new( category_params )

    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def category_params
      params.require(:category).permit([:name])
  end
end
