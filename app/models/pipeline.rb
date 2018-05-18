class Pipeline < ApplicationRecord
  belongs_to :teams, dependent: :destroy, optional: true
  has_many :builds
end
