require File.dirname(__FILE__) + '/../test_helper'

class ProjectTest < Test::Unit::TestCase
  fixtures :bugs
  fixtures :users
  fixtures :projects

  def setup
    @p = Project.find(1)
  end

  # Replace this with your real tests.
  def test_name
    assert @p.name != nil
    assert @p.name == 'rubyamf'
  end
    
  def create_project
    p = Project.new({
      :name => 'amfphp',
      :status => 0
    })
    assert p.save
  end
  
  def test_project_has_bugs
    assert @p.bugs != nil
  end
  
  def test_project_bugs_are_valid
    assert @p.bugs[0].title != nil
    assert @p.bugs[0].description != nil
  end
end
