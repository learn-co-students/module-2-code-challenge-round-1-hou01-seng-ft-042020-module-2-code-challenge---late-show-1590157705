class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        appearance = Appearance.new(appearances_params)
        episode = Episode.find(appearance.episode_id)
        if appearance.valid?
            appearance.save
            redirect_to episode_path(episode)
        else
            flash[:errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end

    end

    private

    def appearances_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end


  end