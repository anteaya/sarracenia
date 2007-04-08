require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  fixtures :projects
  fixtures :users
  fixtures :bugs
  fixtures :companies

  def setup
    @u = User.find(1)
    @nu = User.find(1)
  end

  ####
  # Generic User Testing
  ####
  def test_username
    assert @u.user_name == 'asmith'
  end
  
  def test_firstname
    assert @u.first_name == 'Aaron'
  end
  
  def test_lastname
    assert @u.last_name == 'Smith'
  end
  
  def test_email
    assert @u.email == 'beingthexemplary@gmail.com'
  end
  
  def test_phone
    assert @u.phone == '7863741852'
  end  
  
  def test_company
    #assert @u.company != nil
  end
  
  def test_usertype
    assert @u.user_type == 0
  end
  
  def test_shouldnotify
    assert @u.user_type == 0
  end
  
  def test_create_user
    @nu = User.new({
      :user_type => 0,
      :company_id => 1,
      :user_name => 'davidh',
      :first_name => 'david', 
      :last_name => 'hasselhoffenmeier',
      :email => 'adasdf@asdfasdf.com',
      :phone => '34928293',
      :password => "smithers",
      :should_notify => 0
    })
    
    #assert a save
    assert @nu.save
    
    #assert the data
    assert @nu.user_name == 'davidh'
    assert @nu.user_type == 0
    assert @nu.first_name == 'david'
    assert @nu.last_name == 'hasselhoffenmeier'
    assert @nu.email == 'adasdf@asdfasdf.com'
    assert @nu.phone == '34928293'
    assert @nu.password == 'smithers'
    assert @nu.should_notify == 0
  end
  
  def test_delete_user
    assert @nu.destroy
  end
  
  def test_update_user
    assert @nu.update_attribute(:first_name,'samsonite')
  end
  
  #####
  # User and Bug relationship testing
  ####
  def test_user_has_bugs
    assert !@u.bugs.empty?
  end

  def test_bug_has_title
    assert @u.bugs[0].title != nil
  end
  
  def test_bug_has_description
    assert @u.bugs[0].description != nil
  end
  
  def test_bug_meta
    assert @u.bugs[0].status == 0
    assert @u.bugs[0].level == 0
    assert @u.bugs[0].feedback == 1
  end
  
  ####
  # User to Bug relationship creation testing
  ####
  def test_create_bug_on_user          
    b = Bug.new({
      :user_id => 1,
      :project_id => 1,
      :title => 'this is a friggin bug',
      :description => 'this bug is so complicated I rock',
      :level => 0,
      :status => 0,
      :feedback => 0
    })
    assert b.save
    @u.bugs << b
    assert @u.save
    assert @u.bugs[@u.bugs.length - 1].title = 'this is a friggin bug'
  end
  
  
  ####
  # User to Project relationship testing
  ####
  def test_user_has_projects
    p = create_project
    @u.projects << p
    @u.save
    assert @u.projects != nil
    assert @u.projects.class.to_s == 'Array'
    assert @u.projects[0].name == 'rubyamf'
  end
  
  ##generic create project
  def create_project
    p = Project.new({:name => 'rubyamf', :status => 0})
    p.save
    p
  end
  
end