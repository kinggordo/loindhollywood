class ApplicationController < ActionController::Base
  protect_from_forgery
 
  #before_filter :set_user_language


  
  #def after_sign_in_path_for(resource)
  #    if resource.is_a?(User)
  #      films_path
  #    else
  #      super
  #    end
  #  end

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
    

    #order and paginate:
    @films = found_films.paginate(:per_page => 25, :page => params[:page])
  end
  
  def prepare_search_office
    found_offices = Office.search(params[:search])
    @count = found_offices.count

    @countries = Office.all.collect { |office| office.country }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('country = ?', params[:country]) unless params[:country].blank?

    @sons = Office.all.collect { |office| office.son }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('son = ?', params[:son]) unless params[:son].blank?

    @producers = Office.all.collect { |office| office.producer }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('producer = ?', params[:producer]) unless params[:producer].blank?

    @lieux = Office.all.collect { |office| office.lieu }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('lieu = ?', params[:lieu]) unless params[:lieu].blank?

    @lesformats = Office.all.collect { |office| office.format }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('format = ?', params[:leformat]) unless params[:leformat].blank?

    @genres = Office.all.collect { |office| office.genre }.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('genre = ?', params[:genre]) unless params[:genre].blank?

    @supports = Office.all.collect { |office| office.support}.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('support = ?', params[:support]) unless params[:support].blank?

    @themeas = Office.all.collect { |office| office.themea}.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('themea = ?', params[:themea]) unless params[:themea].blank?

    @themebs = Office.all.collect { |office| office.themeb}.compact.sort{ |a,b| a.downcase <=> b.downcase }.uniq
    found_offices = found_offices.where('themeb = ?', params[:themeb]) unless params[:themeb].blank?

    @offices = found_offices.paginate(:per_page => 25, :page => params[:page])
  end
  
  def prepare_search_bis
    found_salles = Salle.search(params[:search])
    @count = found_salles.count

    #add criteria for company:
    @cities = Ville.all.collect { |ville| [ville.name,ville.id] }.compact.sort{ |a,b| a<=> b}.uniq
    found_salles = found_salles.where('salles.ville_id = ?', params[:ville_id]) unless params[:ville_id].blank?

    #order and paginate:
    @salles = found_salles.order(sort_column + " " + sort_direction).paginate(:per_page => 25, :page => params[:page])
  end

private
  def set_user_language
    I18n.locale = 'fr'
  end
  
  

end
