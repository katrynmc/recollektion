class PreferencesController < ApplicationController

  def index
     @preferences = Preference.order(score: :desc)

  end

  def show
    @preference = Preference.find(params[:id])

  end

  def new
    @preference = Preference.new
  end

  def create
    @category = Category.find(params[:preference][:category])
    @item = Item.find(params[:preference][:item])

    @preference = current_user.preferences.new(preference_params)
    @preference.category = @category
    @preference.item = @item
    @item.brand = @brand

    if @preference.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @preference = Preference.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])

    @preference.update(preference_params)



    if @preference.save
      flash[:notice] = "Your preference was succesfully updated"
      redirect_to user_preference_path(current_user, @preference.id)
    else
      render :edit
    end
  end

  def destroy
    @preference = Preference.find(params[:id])
    @preference.destroy!
    flash[:success] = 'Preference deleted.'
    redirect_to root_path
  end

  private

  def preference_params
    params.require(:preference).permit([:score, :comment, :preference_image, :category_id])
  end

end
