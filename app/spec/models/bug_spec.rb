require File.dirname(__FILE__) + '/../spec_helper'

describe Bug do
  fixtures :statuses, :projects, :users, :severities
  
  before(:each) do
    @bug = Bug.new
    @bug.title = @bug.description = "Testing the BDD way"
    @bug.project = projects(:mert)
    @bug.severity = severities(:high)
    @bug.logged_by = users(:srdjan)
    @bug.status = statuses(:open)
    @bug.save
  end

  it "should be valid" do
    @bug.should be_valid
  end
  
  it "should have no errors after save" do
    @bug.errors.should be_empty
  end
  
  it "should be logged by someone" do
    @bug.logged_by.should == users(:srdjan).id
  end
  
  it "should assigned to a project" do
    @bug.project.should_not be_nil
  end
  
  it "should have a status" do
    @bug.status.should_not be_nil
  end
  
  it "should return fixed bugs" do
    Bug.fixed.size.should == 0
  end
  
  it "should return active bugs" do
    Bug.active.size.should == 2
  end
  
  it "should mark bug as fixed" do
    @bug.fixed = true
    @bug.save
    Bug.fixed.size.should == 1
  end
end