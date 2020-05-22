class AppearancesController < ApplicationController

  # before_action :current_appearance, only: []
  
  def new
    @appearance = Appearance.new
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
    appearance = Appearance.new(appearance_params)

    if appearance.valid?
      appearance.save
      redirect_to episode_path(@episodes)
    else
      redirect_to new_appearance_path
    end
  end

  private
  def current_appearance
    @appearance = Appearance.find(params[:id])
  end

  def appearance_params
    params.require(:appearance).permit(:rating, :episode_id, :guest_id)
  end
end
