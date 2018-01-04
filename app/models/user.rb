class User < ApplicationRecord
  has_secure_password
  has_many :followings
  has_many :congressmen, through: :followings, source: :congressman
end
