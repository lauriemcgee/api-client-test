class CharactersController < ApplicationController
  def index
    @characters = Unirest.get("http://localhost:3000/api/v1/characters").body
    render "index.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @character = Unirest.post("http://localhost:3000/api/v1/characters", parameters: 
      {
        character_name: params["character_name"],
        char_class: params["char_class"],
        level: params["level"],
        background: params["background"],
        player_name: params["player_name"],
        race: params["race"],
        alignment: params["alignment"],
        experience_points: params["experience_points"],
        strength: params["strength"],
        dexterity: params["dexterity"],
        constitution: params["constitution"],
        intelligence: params["intelligence"],
        wisdom: params["wisdom"],
        charisma: params["charisma"],
        proficiency_bonus: params["proficiency_bonus"],
        armor_class: params["armor_class"],
        initiative: params["initiative"],
        speed: params["speed"],
        current_hit_points: params["current_hit_points"],
        temporary_hit_points: params["temporary_hit_points"],
        hit_dice: params["hit_dice"],
        personality_traits: params["personality_traits"],
        ideals: params["ideals"],
        bonds: params["bonds"],
        flaws: params["flaws"],
        features_and_traits: params["features_and_traits"],
        attacks_and_spellcasting: params["attacks_and_spellcasting"],
        equipment: params["equipment"],
        other_proficiencies_and_languages: params["other_proficiencies_and_languages"]
      }
    ).body
    redirect_to "/characters"
  end
  def show
    @character = Unirest.get("http://localhost:3000/api/v1/characters/#{params[:id]}").body
    render "show.html.erb"
  end
  def edit
    @character = Unirest.get("http://localhost:3000/api/v1/characters/#{params[:id]}").body
    render "edit.html.erb"
  end
  def update
    @character = Unirest.patch("http://localhost:3000/api/v1/characters/#{params[:id]}", parameters:
    {
      character_name: params["character_name"],
        char_class: params["char_class"],
        level: params["level"],
        background: params["background"],
        player_name: params["player_name"],
        race: params["race"],
        alignment: params["alignment"],
        experience_points: params["experience_points"],
        strength: params["strength"],
        dexterity: params["dexterity"],
        constitution: params["constitution"],
        intelligence: params["intelligence"],
        wisdom: params["wisdom"],
        charisma: params["charisma"],
        proficiency_bonus: params["proficiency_bonus"],
        armor_class: params["armor_class"],
        initiative: params["initiative"],
        speed: params["speed"],
        current_hit_points: params["current_hit_points"],
        temporary_hit_points: params["temporary_hit_points"],
        hit_dice: params["hit_dice"],
        personality_traits: params["personality_traits"],
        ideals: params["ideals"],
        bonds: params["bonds"],
        flaws: params["flaws"],
        features_and_traits: params["features_and_traits"],
        attacks_and_spellcasting: params["attacks_and_spellcasting"],
        equipment: params["equipment"],
        other_proficiencies_and_languages: params["other_proficiencies_and_languages"]
      }).body
    redirect_to "/characters/#{@character["id"]}"
  end
  def destroy
    @message = Unirest.delete("http://localhost:3000/api/v1/characters/#{params[:id]}")
    redirect_to "/characters"
  end
end
