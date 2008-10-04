require 'test_helper'

class ProjectSubscriptionTest < ActiveSupport::TestCase
  fixtures :users, :projects
  
  def test_user_is_subscribed_to_project
    ps = project_subscriptions(:one)
    assert_equal ps.subscriber, users(:srdjan)
  end
  
  def test_project_has_a_user
    p = projects(:mert)
    assert_equal p.subscribers.size, 1
  end
end
