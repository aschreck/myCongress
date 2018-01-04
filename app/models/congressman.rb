class Congressman < ApplicationRecord
  has_many :followings
  has_many :users, through: :followings, source: :user
end
