class EpisodesController < ApplicationController
  
  before_action :current_number, only: :show
  def index
    @episodes = Episode.all
  end

  def show
    @episodes = Episodes.find(params[:id])
  end

  private
  def current_guest
    @episodes = Episodes.find(params[:id])
  end

  def episodes_params
    params.require(:episodes).permit(:date, :number)
  end

end
