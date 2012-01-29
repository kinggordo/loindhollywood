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
    @companies = Film.all.collect { |film| film.company }.compact.sort.uniq
    found_films = found_films.where('company = ?', params[:company]) unless params[:company].blank?

    #add criteria for country
    @countries = Film.all.collect { |film| film.country }.compact.sort.uniq
    found_films = found_films.where('country = ?', params[:country]) unless params[:country].blank?

    #add criteria for color 
    @colors = Film.all.collect { |film| film.color }.compact.sort.uniq
    found_films = found_films.where('color = ?', params[:color]) unless params[:color].blank?

    #add criteria for sound
    @sounds = Film.all.collect { |film| film.sound }.compact.sort.uniq
    found_films = found_films.where('sound = ?', params[:sound]) unless params[:sound].blank?

    #order and paginate:
    @films = found_films.order(sort_column + " " + sort_direction).paginate(:per_page => 25, :page => params[:page])
  end

end
