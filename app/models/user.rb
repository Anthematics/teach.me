class User < ApplicationRecord
	has_secure_password
	has_many :languages
	has_many :user_steps

				PASSWORD_VALIDATOR = /(    # Start of group
				(?:                        # Start of nonmatching group, 4 possible solutions
					(?=.*[a-z])              # Must contain one lowercase character
					(?=.*[A-Z])              # Must contain one uppercase character
					(?=.*\W)                 # Must contain one non-word character or symbol
				|                          # or...
					(?=.*\d)                 # Must contain one digit from 0-9
					(?=.*[A-Z])              # Must contain one uppercase character
					(?=.*\W)                 # Must contain one non-word character or symbol
				|                          # or...
					(?=.*\d)                 # Must contain one digit from 0-9
					(?=.*[a-z])              # Must contain one lowercase character
					(?=.*\W)                 # Must contain one non-word character or symbol
				|                          # or...
					(?=.*\d)                 # Must contain one digit from 0-9
					(?=.*[a-z])              # Must contain one lowercase character
					(?=.*[A-Z])              # Must contain one uppercase character
				)                          # End of nonmatching group with possible solutions
				.*                         # Match anything with previous condition checking
			)/x                          # End of group

	validates :email, presence: true
	validates :email, {uniqueness: true}
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "email format is incorrect"  }
	validates :password, confirmation: true , length: { in: 6..20, message: "password must be between 6 & 20 charactors" } , format: {
				with: PASSWORD_VALIDATOR,
				message: "must contain 3 of the following 4: a lowercase letter, an uppercase letter, a digit, a non-word character or symbol"
				}
	validates :password_confirmation, presence: true

end
