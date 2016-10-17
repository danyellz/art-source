class User < ActiveRecord::Base
	has_secure_password
	has_many :friends

	attr_accessible :email, :secure_pass

	validates_uniqueness_of :email, :on => :create, :message => "Email must be unique!"
end