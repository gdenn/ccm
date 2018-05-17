class Pipeline < ApplicationRecord
  belongs_to :teams, dependent: :destroy
  has_many :builds
end
