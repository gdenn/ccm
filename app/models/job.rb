class Job < ApplicationRecord
    belongs_to :pipeline, dependent: :destroy, optional: true
    has_many :builds
    # validates :name, presence: true
    # validates :paused, presence: true
end
