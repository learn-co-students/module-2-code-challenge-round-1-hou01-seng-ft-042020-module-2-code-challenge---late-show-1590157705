class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @guests = Guest.all
    @episode = current_episode
    @appearances = Appearance.all
    
  end

  def current_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:date, :number)
  end
end
