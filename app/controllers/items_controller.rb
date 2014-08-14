class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new( item_params )
    if @item.save
      redirect_to new_user_preference_path(current_user)
    else
      render :new
    end
  end
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @Item.update(item_params)

    if @item.save
      flash[:notice] = "Your item name was succesfully updated"
      redirect_to :back
    else
      render :edit
    end
  end
  private

  def item_params
      params.require(:item).permit([:name])
  end
end
