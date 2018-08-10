class Project < ApplicationRecord
  scope :status, -> (status) { where status: status }
  # scope :category, -> (charity.category_id) { where category_id: category_id }
  # scope :work_type, -> (work_type) { where work_type: work_type }
  # scope :deadline, -> (deadline) { where deadline: deadline }
  # scope :status, -> (status) { where("status like ?", "%#{status}%")}
  scope :work_type, -> (work_type) { where("work_type like ?", "%#{work_type}%")}
  scope :charity_category, -> (charity_category) { where("charity_category like ?", "%#{charity_category}%")}
  belongs_to :charity
  STATUSES = ['pending', 'active', 'done', 'In Progress']
  TYPES = ['Rebuild', "New", "Update"]
  CATEGORIES = ['Environment', "Community Development", "Animals"]
  DEADLINES = [15, 30, 60]
end
