class Actor < ApplicationRecord
  belongs_to :user
  has_many :movies
  has_many :roles
  has_many :movies, through: :roles

  validates_presence_of :name



  #   self.roles.sum do |role|
  #
  # end
end
