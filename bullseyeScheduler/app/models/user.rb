class User < ActiveRecord::Base
	has_many :shift

  has_secure_password
	validates_uniqueness_of :email


end
