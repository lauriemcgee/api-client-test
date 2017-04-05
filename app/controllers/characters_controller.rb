class CharactersController < ApplicationController
  def show
    @character = Unirest.get("http://localhost:3000/api/v1/characters/#{params[:id]}").body
    render "show.html.erb"
  end
end
