class Skill < ApplicationRecord
  has_many :developers, through: :developer_skills
  has_many :projects, through: :project_skills
end
