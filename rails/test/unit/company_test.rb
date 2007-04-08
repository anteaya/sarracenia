require File.dirname(__FILE__) + '/../test_helper'

class CompanyTest < Test::Unit::TestCase
  fixtures :companies

  def setup
    @c = Company.find(1)
  end

  # Replace this with your real tests.
  def test_name
    assert @c.name != nil
    assert @c.name == 'cpb'
  end
  
  def test_create
    c = Company.new({:name => 'gangsta'})
    assert c.save
  end
end
