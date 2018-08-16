class Project < ApplicationRecord
  STATUSES = ['Pending', 'Active', 'Done', 'In Progress']
  TYPES = ['Rebuild', "New", "Update"]
  CATEGORIES = ["Animals", "Community Development", "Education", "Health", "Environment", "Human Rights"]
  DEADLINES = [15, 30, 60]
  SKILLS = ["angularjs", "backbonejs", "bootstrap", "c", "csharp", "css3", "django", "drupal", "git", "gitlab", "heroku", "html5", "java", "javascript", "jquery", "linux", "meteor", "mongodb", "mysql", "nodejs", "php", "python", "rails", "react", "ruby", "swift", "typescript", "vim", "vuejs", "webpack", "wordpress"]

  belongs_to :charity
  has_many :members, dependent: :destroy
  has_many :developers, through: :members
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_many :chatrooms
  has_many :proposals
  has_many :posts
  mount_uploader :photo, PhotoUploader
end

