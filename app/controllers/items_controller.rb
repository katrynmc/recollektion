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

  private

  def item_params
      params.require(:item).permit([:name])
  end
end
