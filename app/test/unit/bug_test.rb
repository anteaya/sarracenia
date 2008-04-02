require File.dirname(__FILE__) + '/../test_helper'

class BugTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_create_bug
    bug = Bug.new
    populate_bug(bug)
    assert_equal bug.save, true
  end
  
  def test_bug_fixed
    bug = Bug.find_by_id(1)
    bug.fixed = true
    bug.date_fixed = Time.now
    bug.save    
    assert_equal bug.fixed, true
  end
  
  def test_bug_fixed_date
    bug = Bug.find_by_id(1)
    bug.date_fixed = Time.now
    assert_equal bug.date_fixed, Time.now
  end
  
  def test_update_severity
    bug = Bug.find_by_id(1)
    bug.severity_id=2
    assert_equal bug.save, true
  end
  
  def test_bug_destroy
    bug = Bug.new
    populate_bug bug
    bug.destroy
    assert_equal bug.frozen?, true
  end
  
  def test_bug_project
    bug = Bug.new
    populate_bug bug
    assert_equal bug.project.name, 'MERT'
  end
  
  private
  def populate_bug(bug)
    bug.title = "Created from test environment"
    bug.description = "Created from test environment with long description"
    bug.severity_id = 1
    bug.project_id = 1
  end
end