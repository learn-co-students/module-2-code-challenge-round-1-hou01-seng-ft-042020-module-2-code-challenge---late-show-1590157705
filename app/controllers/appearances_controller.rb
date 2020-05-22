class AppearancesController < ApplicationController


    def index
    end

    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.valid?
            @appearance.save
            redirect_to appearance_path(@appearance)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end


    def current_appearance
        @appearance = Appearance.find(params[:id])
    end


    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
