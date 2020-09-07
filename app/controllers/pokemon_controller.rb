class PokemonController < ApplicationController
  def index
    result_nb = 10 # résultats par page
    page_nb = params[:page_nb].to_i # la page à retourner

    if !page_nb.nil? && page_nb.positive?
      @pokemon = Pokemon.limit(10).offset(result_nb*(page_nb-1))
    else
      results = Hash.new
      mon_arr = Array.new
      curr_page = 1

      Pokemon.all.each do |mon|
        mon_arr << mon
        # ajouter la page une fois remplie
        if (mon_arr.count % result_nb).zero?
          results[curr_page] = mon_arr
          curr_page += 1
          mon_arr = []
        end
      end
      results[curr_page] = mon_arr if !(mon_arr.count % result_nb).zero? # ajouter la dernière page si elle n'était pas remplie

      @pokemon = results
    end

    respond_to do |format|
      format.json { render(:json => @pokemon.to_json) }
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    respond_to do |format|
      format.json { render(:json => @pokemon.to_json) }
    end
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.save
    respond_to do |format|
      format.json { render(:json => @pokemon.to_json) }
    end
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update_attributes(pokemon_params)
    respond_to do |format|
      format.json { render(:json => @pokemon.to_json) }
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id]).destroy
    respond_to do |format|
      format.json { render(:json => @pokemon.to_json) }
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(Pokemon.accessible_attributes)
  end
end