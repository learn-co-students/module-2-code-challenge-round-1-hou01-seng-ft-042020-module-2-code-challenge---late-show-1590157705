class GuestsController < ApplicationController

  before_action :current_guest, only: [:show]
  
  def index
    @guests = Guest.all
  end
  
  def show
  end 

  def current_guest
    @guest = Guest.find(params[:id])
  end

  private
  def guests_params
    params.require(:guest).permit(:name, :occupation)
  end
end

