class Build < ApplicationRecord
  belongs_to :pipeline, dependent: :destroy, optional: true
end
