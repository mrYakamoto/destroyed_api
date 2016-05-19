class Film < ActiveRecord::Base
  scope :by_most_recent, -> { order(:created_at => :desc) }

  def as_json(options={})
    super(:only => [:title])
  end
end
