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
      flash[:success] = 'New category created.'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    @category = current_user.category.assign_attributes(category_params)

    if @category.save
      flash[:success] = 'Category updated.'
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy!
    flash[:success] = 'Category deleted.'
    redirect_to user_categories_path
  end

  private

  def category_params
      params.require(:category).permit([:name])
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
