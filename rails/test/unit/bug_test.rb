require File.dirname(__FILE__) + '/../test_helper'

class BugTest < Test::Unit::TestCase
  fixtures :users
  fixtures :bugs

  #setup - find a bug
  def setup
    @b = Bug.find(1)
    @nb = Bug.find(1)
  end

  ####
  # Generic bug tests
  ####
  def test_title
    assert @b.title != nil
  end
  
  def test_description
    assert @b.description != nil
  end
  
  def test_meta
    assert @b.level == 0
    assert @b.status == 0
    assert @b.feedback == 1
  end
  
  def test_create_bug
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
    
    #destruction assertion
    assert b.destroy
  end
  
  ####
  # Bug to User relationship tests
  ####
  def test_bug_has_user
    assert @b.user != nil
    assert @b.user.first_name != nil
  end
  
  ####
  # Bug to Project testing
  ####
  def test_bug_is_on_project
    p = create_project
    @b.project = p
    @b.save
    assert @b.project
    assert @b.project.name == 'rubyamf'
  end
  
  ##generic create project
  def create_project
    p = Project.new({:name => 'rubyamf', :status => 0})
    p.save
    p
  end
  
  
end
