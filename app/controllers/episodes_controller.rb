class EpisodesController < ApplicationController

  before_action :current_episode, only: [:show]
  # before_action :new_episode, only [:create, :new]
  def index
    @episodes = Episode.all
  end

  def show
    @guests = Guest.all
  end

  def current_episode
    @episode = Episode.find(params[:id])

  end 

  # def new_episode
  #   @episode = Episode.new
  # end


end
