class SwapiService
  require 'httparty'

  API_URL = 'https://swapi.dev/api/'

  def self.get_characters
    response = HTTParty.get("#{API_URL}people")

    characters = response['results']
  end

  def self.get_film_title(url)
    response = HTTParty.get(url)

    film_title = response['title']
  end

  def self.get_homeworld_name(url)
    response = HTTParty.get(url)

    homeworld_name = response['name']
  end
end
