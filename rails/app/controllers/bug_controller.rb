class BugController < ApplicationController
  
  layout 'anteater'
  
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @bug_pages, @bugs = paginate :bugs, :per_page => 10
  end

  def show
    @bug = Bug.find(params[:id])
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(params[:bug])
    if @bug.save
      flash[:notice] = 'Bug was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @bug = Bug.find(params[:id])
  end

  def update
    @bug = Bug.find(params[:id])
    if @bug.update_attributes(params[:bug])
      flash[:notice] = 'Bug was successfully updated.'
      redirect_to :action => 'show', :id => @bug
    else
      render :action => 'edit'
    end
  end

  def destroy
    Bug.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
