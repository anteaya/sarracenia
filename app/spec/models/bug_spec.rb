require File.dirname(__FILE__) + '/../spec_helper'

describe Bug do
  before(:each) do
    @bug = Bug.new
  end

  it "should be valid" do
    @bug.should be_valid
  end
end
