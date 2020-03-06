class Actor < ApplicationRecord
  has_many :movies
  has_many :roles
  has_many :movies, through: :roles

  validates_presence_of :name

  # def role_count
  #   self.roles.sum do |role|
  #
  # end
end
