require File.dirname(__FILE__) + '/../test_helper'

class ProjectTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_create_project
    p = Project.new
    p.name = 'Test Project'    
    assert_equal p.save, true
  end
  
  def test_update_project
    p = Project.find(1)
    p.name = 'MERT 2.1'    
    assert_equal p.save, true
  end
  
  def test_destroy_project
    p = Project.find(2)
    p.destroy
    assert_equal p.frozen?, true
  end
  
  def test_project_bug
    p = Project.find(1)
    assert_equal p.bugs.size, 1
  end
  
  def test_bug_names_in_project
    p = Project.find(1)
    p.bugs.each { |bug| assert_equal bug.severity_id, 1 }
  end
end
