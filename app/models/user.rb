class User < ApplicationRecord
  has_secure_password
  has_many :stocks

  validates :username, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end