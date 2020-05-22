class EpisodesController < ApplicationController


  def index
    @episodes = Episode.all
  end

  def current_episode
    @episode = Episode.find(params[:id])
  end

  def show
    @episode = Episode.find(params[:id])

  end
end
