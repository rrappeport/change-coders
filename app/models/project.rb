class Project < ApplicationRecord
  STATUSES = ['Pending', 'Active', 'Done', 'In Progress']
  TYPES = ['Rebuild', "New", "Update"]
  CATEGORIES = ["Animals", "Community Development", "Education", "Health", "Environment", "Human Rights"]
  DEADLINES = [15, 30, 60]

  belongs_to :charity
  has_many :members, dependent: :destroy
  has_many :developers, through: :members
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_many :chatrooms
  has_many :proposals
  has_many :posts
end

