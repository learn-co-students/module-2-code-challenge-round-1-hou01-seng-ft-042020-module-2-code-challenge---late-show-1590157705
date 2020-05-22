class AppearancesController < ApplicationController
  before_action :current_appearance, only: [:show, :destroy]


  def index
    @appearances = Appearance.all
  end

  def show
  end 

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create 
    appearance = Appearance.new(appearance_params)
    if appearance.valid?
      appearance.save
      redirect_to "/appearances/#{appearance.id}"
    else 
      flash[:errors] = appearance.errors.full_messages
      redirect_to "/appearances/new"
    end 
  end 

  def current_appearance 
    @appearance = Appearance.find(params[:id])
  end 

  def destroy 
    @appearance.destroy
    redirect_to "/appearances"
  end 

  private 
  def appearance_params 
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end 
end
  