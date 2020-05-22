class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = current_guest
    @episodes = Episode.all
    @appearances = Appearance.all
  end


  def current_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end


end
