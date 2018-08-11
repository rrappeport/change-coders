class Skill < ApplicationRecord
  has_many :developer_skills
  has_many :developers, through: :developer_skills
  has_many :project_skills
  has_many :projects, through: :project_skills
end
