class OfficesController < ApplicationController
  before_filter :authenticate_user!
  helper_method :sort_column, :sort_direction
  # GET /offices
  # GET /offices.xml
  def index
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

    @offices = found_offices.order(sort_column + " " + sort_direction).paginate(:per_page => 25, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @offices }
    end
  end

  # GET /offices/1
  # GET /offices/1.xml
  def show
    @office = Office.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @office }
    end
  end

  # GET /offices/new
  # GET /offices/new.xml
  def new
    @office = Office.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @office }
    end
  end

  # GET /offices/1/edit
  def edit
    @office = Office.find(params[:id])
  end

  # POST /offices
  # POST /offices.xml
  def create
    @office = Office.new(params[:office])

    respond_to do |format|
      if @office.save
        format.html { redirect_to(@office, :notice => 'Office was successfully created.') }
        format.xml  { render :xml => @office, :status => :created, :location => @office }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @office.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /offices/1
  # PUT /offices/1.xml
  def update
    @office = Office.find(params[:id])

    respond_to do |format|
      if @office.update_attributes(params[:office])
        format.html { redirect_to(@office, :notice => 'Office was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @office.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /offices/1
  # DELETE /offices/1.xml
  def destroy
    @office = Office.find(params[:id])
    @office.destroy

    respond_to do |format|
      format.html { redirect_to(offices_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def sort_column
    Office.column_names.include?(params[:sort]) ? params[:sort] : "titre"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
