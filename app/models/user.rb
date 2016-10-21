class User < ActiveRecord::Base
	has_secure_password
	has_many :friends

	validates_uniqueness_of :email
end