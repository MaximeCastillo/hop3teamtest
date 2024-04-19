class SwapiService
  require 'httparty'

  API_URL = 'https://swapi.dev/api/'

  def self.get_films
    response = HTTParty.get("#{API_URL}films")

    films = response['results']
  end

  def self.get_character(url)
    response = HTTParty.get(url)
  end

  def self.get_homeworld_name(url)
    response = HTTParty.get(url)

    homeworld_name = response['name']
  end
end
