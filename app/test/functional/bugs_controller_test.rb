require File.dirname(__FILE__) + '/../test_helper'
require 'bugs_controller'

class BugsController; def rescue_action(e) raise e end; end;

class BugsControllerTest < ActionController::TestCase
  def setup
    @controller = BugsController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end
  
  def test_index
    get :index
    assert_response :redirect
  end
  
  def test_show
    get :show, { :id => '2'}
    assert_response :redirect
  end
  
  def test_create
    assigns["bug"].title = assigns["bug"].description = "test bug case"
    assigns["bug"].project_id = 1
    assigns["bug"].severity_id = 2
    
    @bug = Bug.new(assigns[:bug])
    assert bug.save, true
  end
end
