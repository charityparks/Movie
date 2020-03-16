class Actor < ApplicationRecord
  belongs_to :user
  has_many :roles
  has_many :movies, through: :roles
  # has_many :movies


  validates_presence_of :name





end
