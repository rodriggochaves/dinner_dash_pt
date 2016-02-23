class User < ActiveRecord::Base

  before_save { self.email = email.downcase }
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  validates :display_name, length: { minimum: 2, maximum: 32 }, 
            allow_nil: true, allow_blank: true

  has_secure_password
end
