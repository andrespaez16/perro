class PagesController < ApplicationController
  before_action :logged_in_dog, only: [:home, :about, :team]

  def home
  end

  def about
  end

  def team
  end

  def logged_in_dog
    unless logged_in?
      redirect_to '/'
    end
  end
end
