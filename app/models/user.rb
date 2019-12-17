class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 25 }, uniqueness: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

  has_secure_password
end
