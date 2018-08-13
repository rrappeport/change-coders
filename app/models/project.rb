class Project < ApplicationRecord
  STATUSES = ['pending', 'active', 'done', 'In Progress']
  TYPES = ['Rebuild', "New", "Update"]
  CATEGORIES = ['Environment', "Community Development", "Animals"]
  DEADLINES = [15, 30, 60]

  belongs_to :charity
  has_many :members, dependent: :destroy
  has_many :developers, through: :members
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_many :chatrooms
  has_many :proposals
end
