class GuestsController < ApplicationController

  before_action :current_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
    # byebug
  end

  def current_guest
    @guest = Guest.find(params[:id])
  end
end
