class CategoriesController < ApplicationController
  def index
     @categories = Category.order(name: :desc)
  end
end
