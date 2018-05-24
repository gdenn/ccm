class Concourse < ApplicationRecord
    has_many :teams
    # validates :name, presence: true
    # validates :host, presence: true
    # validates :type, inclusion: => { :in => ["staging", "production"] }  
end
