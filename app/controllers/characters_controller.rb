class CharactersController < ApplicationController
  def index
    @filtered_characters_grouped_by_film = {}

    films = SwapiService.get_films

    films.each do |film|
      film['characters'].each do |character_url|
        character = SwapiService.get_character(character_url)
        @filtered_characters_grouped_by_film[film['title']] ||= []
        @filtered_characters_grouped_by_film[film['title']] << {
            name: character['name'],
            mass: character['mass'],
            homeworld: SwapiService.get_homeworld_name(character['homeworld'])
          } if character['mass'].to_i > 75
      end
    end
  end
end
