class CompaniesController < ApplicationController

  def index
    @companies = Company.find(:all)
    format_output @companies
  end

  def show
    @company = Company.find(params[:id])
    format_output @company
  end

  def edit
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
    format_output @company
  end

  def create
    @company = Company.new(params[:company])
    format_output @company, true
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    format_output @company
  end

  def update
    @company = Company.find(params[:id])
    format_output @company, false, true
  end
  
  private
  def format_output(entity, new_entity=false, updated_entity=false)
    
    changed = false
    if new_entity && entity.save
      flash[:notice] = 'Company was successfully created.'
      changed = true
    elsif updated_entity && entity.update_attributes(params[:company])
      flash[:notice] = 'Company was successfully updated'
      changed = true
    end
    
    respond_to do |format|
      if entity.frozen? || (updated_entity || new_entity)
        format.html { redirect_to(companies_url) } if entity.frozen?
        format.html { redirect_to(entity)} if updated_entity || new_entity
        format.xml { head:ok }
      elsif (new_entity || updated_entity) && !changed
        format.html { render :action => "new"} if new_entity
        format.html { render :action => "edit"} if updated_entity
        format.xml  { render :xml => @company.errors, :status => :unprocessable_entity }
      else
        format.html
        format.xml { render :xml => entity }
      end
    end
  end
end
