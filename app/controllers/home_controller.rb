class HomeController < ApplicationController
  layout 'home'
  helper_method :sort_column, :sort_direction
  
  def index
    
    films_per_page = 10

         sort = case params['sort']
                when "name"  then "name"
                
                end

         found_films = Film.search(params[:query])
         @films = found_films.paginate(:per_page => 20, :page => params[:page], :order => sort)
         @count = found_films.count
         if request.xml_http_request?
           render :partial => "ajax_search", :layout => false
         end
  end
  
  
  
end


private

def sort_column
  Film.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end
