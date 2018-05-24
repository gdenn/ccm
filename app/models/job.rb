class Job < ApplicationRecord
    belongs_to :pipeline, dependent: :destroy, optional: true
    validates :name, presence: true
    validates :paused, presence: true
end
