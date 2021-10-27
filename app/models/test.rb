class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
  # validates :email, presence: true, uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX }
  before_save { self.email = email.downcase }

  has_many :articles
end
