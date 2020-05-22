class AppearancesController < ApplicationController

  def new
    @guests = Guest.all
    @episodes = Episode.all
  end

  
end
