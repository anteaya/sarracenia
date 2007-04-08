class UserController < ApplicationController
  
  layout 'anteater'
  
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @page_title = "Users"
    @user_pages, @users = paginate :users, :per_page => 10
  end

  def show
    list
    render :action => 'list'
  end

  def new
    @page_title = "Users > New User"
    @user = User.new
    @companies = Company.find(:all)
  end

  def create
    @user = User.new(params[:user])
    @user.company_id = params[:company]
    if @user.save
      flash[:notice] = 'User was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @page_title = 'Users > Edit User'
    @user = User.find(params[:id])
    @companies = Company.find(:all)
    @company_select_id = @user.company.id
    @should_notify = @user.should_notify
    @checked = (@should_notify == 1)
  end

  def update
    @user = User.find(params[:id])
    puts "UPDATE USER"
    puts @user.inspect
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User was successfully updated.'
      redirect_to :action => 'show', :id => @user
    else
      render :action => 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
