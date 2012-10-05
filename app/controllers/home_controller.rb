class HomeController < ApplicationController
  layout 'home'
  helper_method :sort_column, :sort_direction
  
  def index
         prepare_search 
         prepare_search_office 
        @participants = Participant.all
  end
  
  
  
end


private

def sort_column
  Film.column_names.include?(params[:sort]) ? params[:sort] : "name"
end

def sort_direction
  %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
end
