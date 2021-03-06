class User < ActiveRecord::Base
	has_many :microposts
	before_save { self.email = email.downcase }
	validates :name, presence: true, lenght: { maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, lenght: { maximum: 255},
					format: { with: VALID_EMAIL_REGEX }
					uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, lenght: { minimum: 6 }

	
end
