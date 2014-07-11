class CategoriesController < ApplicationController

  def index
     @categories = Category.order(name: :desc)
  end

  private

  def category_params
      params.require(:category.permit(:name, preferences_attributes: [:id, :score, :comment, :_destroy])
  end
end
