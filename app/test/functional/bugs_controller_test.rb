require File.dirname(__FILE__) + '/../test_helper'
require 'bugs_controller'

class BugsController; def rescue_action(e) raise e end; end;

class BugsControllerTest < ActionController::TestCase
  def setup
    @controller = BugsController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end
  
  def test_should_get_show
    get :show, :id => 1
    assert_response :redirect
  end
  
  def test_create_should_assign_a_valid_bug
    post :create, :bug => { :title => "test bug case", :description => "test bug desc", :project_id => 1, :severity_id => 2}
    assert_valid assigns(:bug)
  end
end
