class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def get_appearance_rating(episode) 
      self.appearances.find_by(episode_id: episode.id).rating
    end

    def sort_episodes_by_rating
      self.episodes.sort_by { |episode| self.get_appearance_rating(episode) }.reverse
    end 
end
