class Role < ApplicationRecord
  belongs_to :movie, optional: true
  belongs_to :actor, optional: true

  validates_presence_of :category
end
