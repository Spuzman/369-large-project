class Work < ActiveRecord::Base
  validates :name, presence: true
  validates :year_completed, presence: true
  validates_format_of :year_completed, with: /\d{4}/, message: "must have format: YYYY"
  validates :materials, presence: true
end
