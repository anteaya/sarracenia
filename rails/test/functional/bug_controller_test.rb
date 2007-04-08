require File.dirname(__FILE__) + '/../test_helper'
require 'bug_controller'

# Re-raise errors caught by the controller.
class BugController; def rescue_action(e) raise e end; end

class BugControllerTest < Test::Unit::TestCase
  fixtures :bugs

  def setup
    @controller = BugController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new

    @first_id = bugs(:first).id
  end

  def test_index
    get :index
    assert_response :success
    assert_template 'list'
  end

  def test_list
    get :list

    assert_response :success
    assert_template 'list'

    assert_not_nil assigns(:bugs)
  end

  def test_show
    get :show, :id => @first_id

    assert_response :success
    assert_template 'show'

    assert_not_nil assigns(:bug)
    assert assigns(:bug).valid?
  end

  def test_new
    get :new

    assert_response :success
    assert_template 'new'

    assert_not_nil assigns(:bug)
  end

  def test_create
    num_bugs = Bug.count

    post :create, :bug => {}

    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_equal num_bugs + 1, Bug.count
  end

  def test_edit
    get :edit, :id => @first_id

    assert_response :success
    assert_template 'edit'

    assert_not_nil assigns(:bug)
    assert assigns(:bug).valid?
  end

  def test_update
    post :update, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'show', :id => @first_id
  end

  def test_destroy
    assert_nothing_raised {
      Bug.find(@first_id)
    }

    post :destroy, :id => @first_id
    assert_response :redirect
    assert_redirected_to :action => 'list'

    assert_raise(ActiveRecord::RecordNotFound) {
      Bug.find(@first_id)
    }
  end
end
