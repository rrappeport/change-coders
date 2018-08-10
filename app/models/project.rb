class Project < ApplicationRecord
  belongs_to :charity
  has_many :members
  has_many :developers, through: :members
  has_many :skills, through: :project_skills
  has_many :chatrooms
  has_many :proposals
end
