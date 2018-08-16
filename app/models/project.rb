class Project < ApplicationRecord
  STATUSES = ['Pending', 'Active', 'Done', 'In Progress']
  TYPES = ['Rebuild', "New", "Update"]
  CATEGORIES = ["Animals", "Community Development", "Education", "Health", "Environment", "Human Rights"]
  DEADLINES = [15, 30, 60]
  SKILLS = ["C", "C++", "C#", "Clojure", "CoffeeScript", "CSS", "Go", "Haskell", "Java", "JavaScript", "Lua", "Matlab", "Objective-C", "Peral", "PHP", "Python", "R", "Ruby", "Scala", "Shell", "Swift", "TeX", "Vim script"]

  belongs_to :charity
  has_many :members, dependent: :destroy
  has_many :developers, through: :members
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_many :chatrooms
  has_many :proposals
  has_many :posts
  mount_uploader :photo, PhotoUploader

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end

end

