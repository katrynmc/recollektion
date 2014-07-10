class HomeController < ApplicationController
  def show
    @categories = Category.order(name: :desc).limit(18)
    @preferences = Preference.order(score: :desc).limit(18)
  end
end
