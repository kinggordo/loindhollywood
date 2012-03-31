module ApplicationHelper


  def list_prices
    (1..10).to_a.map{|i| [i,i]}
  end

  def timetohoursandminutes(thetime)
    if !thetime.nil?
      hourstring = "%02d" % thetime.hour
      minutestring = "%02d" % thetime.min
      "#{hourstring}:#{minutestring}"
    else
      ""
    end
  end

  def list_hours_each_quarter()
    hours = (0..23)
    minutes = 0.step(45, 15)
    final = []
    hours.each do |hour|
      minutes.each do |minute|
        hourstring = "%02d" % hour
        minutestring = "%02d" % minute
        final << "#{hourstring}:#{minutestring}"
      end
    end
    final
  end

  def list_and_or_to()
    final = []
    final << ["", 0]
    final << ["and", 1]
    final << ["to", 2]
    final
  end

  def and_or_to_to_s(value)
    case value
    when 1
        "and"
    when 2
        "to"
    else
        ""
    end
  end
  
  def link_to_remove_fields(name, f)
      f.hidden_field(:_destroy) +
      link_to_function(name, "remove_fields(this)")
  end
  
  
  #localvariables: example: { :forced_ville_id => 2 } #used for joint_fields partial for now 
  def link_to_add_fields(name, f, association, localvariables = {})
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render :partial => association.to_s.singularize + "_fields", :locals => localvariables.merge( {:f => builder} )
    end
    link_to_function(name, ("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"))
  end
  

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end
  
  def pagination_links_remote(paginator)
    page_options = {:window_size => 1}
    pagination_links_each(paginator, page_options) do |n|
      options = {
        :url => {:action => 'index', :params => params.merge({:page => n})},
        :update => 'table',
        :before => "Element.show('spinner')",
        :success => "Element.hide('spinner')"
      }
      html_options = {:href => url_for(:action => 'index', :params => params.merge({:page => n}))}
      link_to_remote(n.to_s, options, html_options)
    end
  end
  
  def sort_td_class_helper(param)
    result = 'class="sortup"' if params[:sort] == param
    result = 'class="sortdown"' if params[:sort] == param + "_reverse"
    return result
  end
  
  def sort_link_helper(text, param)
    key = param
    key += "_reverse" if params[:sort] == param
    options = {
        :url => {:action => 'index', :params => params.merge({:sort => key, :page => nil})},
        :update => 'table',
        :before => "Element.show('spinner')",
        :success => "Element.hide('spinner')"
    }
    html_options = {
      :title => "Sort by this field",
      :href => url_for(:action => 'index', :params => params.merge({:sort => key, :page => nil}))
    }
    link_to_remote(text, options, html_options)
  end


end
