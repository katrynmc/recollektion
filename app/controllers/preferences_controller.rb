class PreferencesController < ApplicationController
  def index
     @preferences = Preference.order(score: :desc).limit(18)
  end
end
