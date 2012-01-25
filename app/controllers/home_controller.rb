class HomeController < ApplicationController
  layout 'home'
  helper_method :sort_column, :sort_direction
  
  def index
    
    logger.info "index called, parameters: #{params[:query]}"
    films_per_page = 10

         sort = case params['sort']
                when "name"  then "name"
                
                end

         conditions = ["name LIKE ?", "%#{params[:query]}%"] unless params[:query].nil?

         @total = Film.count(:conditions => conditions)
         @films = Film.paginate(:per_page => 20, :page => params[:page], :order => sort, :conditions => conditions)
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
