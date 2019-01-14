class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 25}, case_sesitive: false

	# how to read below
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, case_sensitive: false, format: {with: VALID_EMAIL_REGEX}

	has_many :logs, dependent: :delete_all 
end
