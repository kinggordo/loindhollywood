class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  def after_sign_in_path_for(resource)
      if resource.is_a?(User)
        films_path
      else
        super
      end
    end

  def prepare_search
    found_films = Film.search(params[:search])
    @count = found_films.count

    #add criteria for company:
    @companies = Film.all.collect { |film| film.company }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_films = found_films.where('company = ?', params[:company]) unless params[:company].blank?

    #add criteria for country
    @countries = Film.all.collect { |film| film.country }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_films = found_films.where('country = ?', params[:country]) unless params[:country].blank?

    #add criteria for color 
    @colors = Color.all.collect { |color| [color.name,color.id] }.compact.sort{ |a,b| a <=> b }.uniq
    found_films =found_films.where('films.color_id = ?', params[:color_id]) unless params[:color_id].blank?

    #add criteria for sound
    @sounds = Sound.all.collect { |sound| [sound.name,sound.id] }.compact.sort{ |a,b| a <=> b }.uniq
    found_films = found_films.where('films.sound_id = ?', params[:sound_id]) unless params[:sound_id].blank?
    
    #add criteria for salle 
    @salles = Salle.all.collect { |salle| [salle.name, salle.id] }.compact.sort{ |a,b| a <=> b }.uniq
    found_films =found_films.where('films.joints.salle_id = ?', params[:id]) unless params[:id].blank?

    #order and paginate:
    @films = found_films.order(sort_column + " " + sort_direction).paginate(:per_page => 25, :page => params[:page])
  end

end
