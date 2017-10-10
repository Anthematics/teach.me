class User < ApplicationRecord
	has_secure_password

	has_many :steps
	has_many :chapters
end
