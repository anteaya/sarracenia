require File.dirname(__FILE__) + '/../test_helper'

class BugTest < ActiveSupport::TestCase
  fixtures :statuses
  def setup
    @bug = Bug.new
    populate_bug @bug
  end
  def test_create_bug
    assert_equal @bug.save, true
  end
  
  def test_bug_fixed
    bug = Bug.find_by_id(1)
    bug.fixed = true
    bug.save    
    assert_equal bug.fixed, true
  end
  
  def test_bug_fixed_date
    bug = Bug.find_by_id(1)
    bug.date_fixed = Time.now
    bug.save
    assert_equal bug.date_fixed.to_s(:db), Time.now.to_s(:db)
  end
  
  def test_update_severity
    @bug.severity_id=2
    assert_equal @bug.save, true
  end
  
  def test_bug_destroy
    @bug.destroy
    assert_equal @bug.frozen?, true
  end
  
  def test_bug_project
    bug = Bug.new
    populate_bug bug
    assert_equal bug.project.name, 'MERT'
  end
  
  def test_bug_status
    @bug.status = statuses(:open)
    assert_not_nil @bug.status
  end
  
  def teardown
    @bug = nil
  end
  
  private
  def populate_bug(bug)
    bug.title = "Created from test environment"
    bug.description = "Created from test environment with long description"
    bug.severity_id = 1
    bug.project_id = 1
  end
end