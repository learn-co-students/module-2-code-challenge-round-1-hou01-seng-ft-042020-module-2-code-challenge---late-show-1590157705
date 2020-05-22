class AppearancesController < ApplicationController


    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all
    end

    def create
        appearance = Appearance.new(appearance_params)
        
        if appearance.valid?
            appearance.save
            redirect_to appearance.episode
        else
            flash[:errors] = appearance.errors.full_messages
            redirect_to "/appearances/new"
        end
    end

    # def show
    #     @appearance = Appearance.find(params[:id])
    # end



    private
    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end


end
