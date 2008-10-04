require File.dirname(__FILE__) + '/../spec_helper'

describe Bug do
  before(:each) do
    @bug = Bug.new
    @bug.title = @bug.description = "Testing the BDD way"
    @bug.project_id = 1
    @bug.severity_id = 2
    @bug.logged_by = 1
    @bug.save
  end

  it "should be valid" do
    @bug.should be_valid
  end
  
  it "should have no errors after save" do
    @bug.errors.should be_empty
  end
  
  it "should be logged by someone" do
    @bug.logged_by.should == 1
  end
  
  it "should have only one project" do
    #project = @bug.project
    @bug.project.should_not be_nil
  end
  
  it "should have one status" do
    @bug.status.should_not be_nil
  end
end
