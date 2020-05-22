class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    # temp = @guest.episodes
    # temp[1].appearances[1].rating
    # byebug
  end

end
