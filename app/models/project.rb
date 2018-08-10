class Project < ApplicationRecord
  belongs_to :charity
  has_many :skills, through: :project_skills
end
