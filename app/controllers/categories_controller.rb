class CategoriesController < ApplicationController

  def index
     @categories = Category.order(name: :desc)
  end

  private

  def category_params
      params.require(:name).permit(:name)
  end
end
