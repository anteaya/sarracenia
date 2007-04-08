
require 'rubygems'
require 'active_record'

class Users < ActiveRecord::Base
end

class T
  def initialize
		ActiveRecord::Base.establish_connection(
			:adapter  => "mysql",
			:host     => "localhost",
			:username => "root",
			:password => "",
			:database => "anteater_test"
		)
  end
  
  def ctest
    @nu = Users.new({
      :user_name => 'davidh',
      :first_name => 'david', 
      :last_name => 'hasselhoffenmeier',
      :phone => '34928293',
      :email => 'adasdf@asdfasdf.com',
      :company => 'adakassfot',
      :user_type => 0,
      :password => "smithers",
      :notify => 0})
    @nu.save
  end
end

@r = T.new
@r.ctest