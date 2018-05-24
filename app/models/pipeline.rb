class Pipeline < ApplicationRecord
  belongs_to :team, dependent: :destroy, optional: true
  has_many :jobs
  validates :name, presence: true
  validates :status, presence: true
end
