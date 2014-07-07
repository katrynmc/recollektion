class PreferencesController < ApplicationController
  def index
     @preferences = Preference.order(score: :desc)
  end
end
