class AppearancesController < ApplicationController
 
    
    def index
      @appearnces = Appearance.all
    end

    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end 

    def create 
        appearance = Appearance.new(employees_params)
        appearance.save
        redirect_to appearnce
    end 

 

    private
    def employees_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end 


  end