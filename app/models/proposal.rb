class Proposal < ApplicationRecord
  belongs_to :developer
  belongs_to :project
end
