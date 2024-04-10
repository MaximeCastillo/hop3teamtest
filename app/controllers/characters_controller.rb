class CharactersController < ApplicationController
  def index
    @characters_by_film = {}

    characters = SwapiService.get_characters.select { |character| character['mass'].to_i > 75 }

    characters.each do |character|
      character['films'].each do |film_url|
        film_title = SwapiService.get_film_title(film_url)
        @characters_by_film[film_title] ||= []
        @characters_by_film[film_title] << {
          name: character['name'],
          mass: character['mass'],
          homeworld: SwapiService.get_homeworld_name(character['homeworld'])
        }
      end
    end
  end
end
