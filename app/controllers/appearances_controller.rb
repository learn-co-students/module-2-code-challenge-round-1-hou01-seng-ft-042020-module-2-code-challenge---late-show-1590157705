class AppearancesController < ApplicationController

    def create
        @episodes = Episode.all
        @guests - Guest.all
    end
    
    def new
        @episodes = Episode.all
        @guests = Guest.all
    end
end