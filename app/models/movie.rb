class Movie < ApplicationRecord
  belongs_to :user
  has_many :actors
  has_many :roles
  has_many :actors, through: :roles
  scope :lead, -> { where(category: 'Lead')}
  scope :supporting_role, -> { where(category: 'Supporting Role')}
  scope :other, -> { where(category: 'Other')}
  scope :g_rating, -> { where(rating: 'G')}
  scope :pg_rating, -> { where(rating: 'PG')}
  scope :r_rating, -> { where(rating: 'R')}

  # def self.lead
  #   self.where(category: "Lead")
  # end
  #
  # def self.supporting_role
  #   self.where(category: "Supporting Role")
  # end
  #
  # def self.other
  #   self.where(category: "Other")
  # end
  #
  # def self.g_rating
  #   self.where(rating: "G")
  # end
  #
  # def self.pg_rating
  #   self.where(rating: "PG")
  # end
  #
  # def self.r_rating
  #   self.where(rating: "R")
  # end
end
