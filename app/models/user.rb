class User < ApplicationRecord
  has_many :movies
  has_many :actors
  validates_presence_of :username
  validates_uniqueness_of :username
  has_secure_password
end
