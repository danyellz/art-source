class User < ActiveRecord::Base
	has_secure_password
	has_many :friends

	validates_uniqueness_of :email

	include BCrypt

	def password
    	@password ||= Password.new(secure_pass)
  	end

  	def password=(new_password)
  		@password = Password.create(new_password)
  		self.secure_pass = @password
  	end
end