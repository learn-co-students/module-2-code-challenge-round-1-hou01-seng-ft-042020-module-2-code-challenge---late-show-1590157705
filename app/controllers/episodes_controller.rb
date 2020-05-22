class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
    @guests = Guest.all
  end

end
