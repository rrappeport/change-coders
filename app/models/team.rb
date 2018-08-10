class Team < ApplicationRecord
  belongs_to :project
  has_many :developers, through: :members
  has_many :members
end
