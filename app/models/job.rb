class Job < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true

  has_many :campaigns
end
