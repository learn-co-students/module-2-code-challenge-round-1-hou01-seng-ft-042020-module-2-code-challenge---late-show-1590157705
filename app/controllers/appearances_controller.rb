class AppearancesController < ApplicationController
    before_action :current_appearance, only: [:show]

    def new 
        @appearance=Appearance.new
        @episodes=Episode.all 
        @guests=Guest.all
    end 

    def create
        @appearance=Appearance.new(appearances_params)
        if @appearance.valid? 
            @appearance.save
            redirect_to episode_path(@appearance.episode) 
        else 
            flash[:errors]=@appearance.errors.full_messages
            redirect_to "/appearances/new"
        end
    end 


    def current_appearance
        @appearance=Appearance.find(params[:id])
    end 

    private 

    def appearances_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end 



end
