class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances



    # def rating
    #     self.episodes.each do |e|
    #         "#{e.number} - link_to e.date, episode_path(e) Rating: @appearances.find_by(episode_id: e.id).rating"
    #     end
    # end

    # def epi
    #     self.episodes.each do |e|
    #         "Episode #{e.number} - #{e.date}"
    #     end
    # end
end
