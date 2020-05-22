class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    appearance = Appearance.new(appearances_params)
    if appearance.valid?
      appearance.save
      redirect_to  episode_path(appearance.episode)
    else
      flash[:errors] = appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  def appearances_params
    params.require(:appearance).permit(:rating,:episode_id,:guest_id)
  end
  
end
