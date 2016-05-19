class Film < ActiveRecord::Base
  scope :by_most_recent, -> { order(:created_at => :desc) }
end
