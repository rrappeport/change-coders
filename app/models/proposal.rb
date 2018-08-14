class Proposal < ApplicationRecord
  belongs_to :developer
  belongs_to :project

  def accept
    self.state = "Accepted"
  end
end
