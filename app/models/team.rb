class Team < ApplicationRecord
  belongs_to :concourse, dependent: :destroy, optional: true
  has_many  :pipelines
end
