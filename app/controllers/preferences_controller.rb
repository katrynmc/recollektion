class PreferencesController < ApplicationController

  def index
     @preferences = Preference.order(score: :desc).limit(18)
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

    @preference = current_user.preferences.new(preference_params )
    @preference.category = @category
    @preference.item = @item

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

    if @preference.update(preference_params)
      redirect_to user_preferences_path, notice: "You have updated your preference #{@preference.item.name}"
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
    params.require(:preference).permit([:score, :comment,  :preference_image ])
  end

end
