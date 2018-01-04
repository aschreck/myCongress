class Following < ApplicationRecord
  belongs_to :user
  belongs_to :congressman
end
