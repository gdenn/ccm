class Team < ApplicationRecord
  belongs_to :concourse, dependent: :destroy
  has_many  :pipelines
end
