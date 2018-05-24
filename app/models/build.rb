class Build < ApplicationRecord
  belongs_to :job, dependent: :destroy, optional: true
  validates :build_number, presence: true
  validates :status, inclusion: => { :in => ["aborted", "failed", "succeeded", "pending", "started"] }  
end
