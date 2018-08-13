class Post < ApplicationRecord
  belongs_to :project
  belongs_to :developer
end
