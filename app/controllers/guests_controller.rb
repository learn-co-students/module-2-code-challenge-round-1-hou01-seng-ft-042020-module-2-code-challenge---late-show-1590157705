class GuestsController < ApplicationController

  before_action :current_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
    @appearances_order = @guest.appearances.order("rating DESC")
  end

  private

  def current_guest
    @guest = Guest.find(params[:id])
  end
end
