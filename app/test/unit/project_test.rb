require File.dirname(__FILE__) + '/../test_helper'

class ProjectTest < ActiveSupport::TestCase
   fixtures :bugs, :statuses
   
   def test_create_project
    p = Project.new
    p.name = 'Test Project'    
    assert_equal p.save, true
  end
  
  def test_update_project_name
    p = Project.find(1)
    p.name = 'MERT 2.1'    
    assert_equal p.name, 'MERT 2.1'
  end
  
  def test_set_project_status
     p = Project.find(1)
     p.status = statuses(:in_progress)
     assert_equal p.status.name, "In Progress"
  end
  
  def test_launch_date_is_set
     p=Project.find(1)
     assert_not_nil p.launch_date
  end
  
  def test_update_launch_date
     p = Project.find(1)
     p.launch_date = 12.months.from_now
     p.save
     assert_equal p.launch_date.strftime('%m/%d/%Y'), "10/04/2009"
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
end
