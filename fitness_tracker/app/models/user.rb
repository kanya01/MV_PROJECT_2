class User < ApplicationRecord
  has_many :activities
  has_many :nutritions
  has_many :goals
end
