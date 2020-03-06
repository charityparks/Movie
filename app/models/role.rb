class Role < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
  validates_presence_of :category
end
