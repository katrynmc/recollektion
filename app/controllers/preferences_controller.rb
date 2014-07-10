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

  private

  def preference_params
    params.require(:preference).permit([:score, :comment])
  end

end
