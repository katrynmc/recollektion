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
    @preference = Preference.create( preference_params )
  end


  private

  def preference_params
    params.permit([:score, :comment, :preference_image ])
  end

end
