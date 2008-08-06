class BugsController < ApplicationController
  layout "application"
  def index
    #@bugs = Bug.find(:all, :include => [:severity], :conditions => conditions, :order => "bugs.created_at DESC")
    fixed = params[:fixed] || false
    @bugs = Bug.get_bugs(fixed)
    format_output @bugs
  end

  def edit
    @bug = Bug.find(params[:id])
  end

  def new
    @bug = Bug.new
    format_output @bug
  end

  def show
    @bug = Bug.find(params[:id])
    format_output @bug
  end
  
  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    format_output @bug
  end
  
  def create
    @bug = Bug.new(params[:bug])
    @bug.logged_by = current_user if current_user != nil
    format_output @bug, true
  end
  
  def update
    @bug = Bug.find(params[:id])
    format_output @bug, false, true
  end
  
  
  private
  def format_output(entity, new_entity=false, updated_entity=false)
    
    changed = false
    if new_entity && entity.save
      flash[:notice] = 'Bug was successfully created.'
      changed = true
    elsif updated_entity && entity.update_attributes(params[:bug])
      flash[:notice] = 'Bug was successfully updated'
      changed = true
    end
    
    respond_to do |format|
      if entity.frozen? || (updated_entity || new_entity)
        format.html { redirect_to(bugs_url) } if entity.frozen?
        format.html { redirect_to(entity)} if updated_entity || new_entity
        format.xml { head:ok }
      elsif (new_entity || updated_entity) && !changed
        format.html { render :action => "new"} if new_entity
        format.html { render :action => "edit"} if updated_entity
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      else
        format.html
        format.xml { render :xml => entity }
      end
    end
  end
end