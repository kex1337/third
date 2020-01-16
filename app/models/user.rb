class User < ApplicationRecord
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	before_save :to_lower_case

	validates :name,presence:true, length: { maximum: 21}
	validates :email, presence:true, format: { with: VALID_EMAIL_REGEX},
				uniqueness: { case_sensitive: false}

			has_secure_password

		private

	def to_lower_case
		self.email = email.downcase
	end
end
