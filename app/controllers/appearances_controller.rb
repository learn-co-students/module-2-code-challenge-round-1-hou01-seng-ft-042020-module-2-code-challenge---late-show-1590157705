class AppearancesController < ApplicationController
#     The rating on an Appearance should be between 1 and 5 (inclusive - `1` and `5` are okay).
#    - Add handling for this error to the Appearance create action.

before_action :current_appearance
# before_action :new_appearance,  only [:new, :create]

   def new
       @appearance = Appearance.new
       @episodes = Episode.all
       @guests = Guest.all
   end


  def create
    # byebug
    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
        @appearance.save
        # After submitting the form, the user should be redirected to the selected episode's show page.
        redirect_to "/episodes/#{appearance_params[:episode_id]}"
    else
       flash[:errors] = @appearance.errors.messages
        redirect_to "/appearances/new"
        # redirect_to new_appearance
    end 
end
   
   def current_appearance
    @appearance = Appearance.new(params[:id])
   end 

#    def new_appearance
#     @appearance = Appearance.new
    
#    end 
private
def appearance_params
    params.require(:appearance).permit!
    # params.require(:appearance).permit(:guest_id, :episode_id, :appearance_rating)

end 
   
end
