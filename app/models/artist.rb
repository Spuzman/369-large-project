class Artist < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :born, with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must have format: YYYY-MM-DD"
  validates :born, presence: true
  validates_format_of :died, with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must have format: YYYY-MM-DD"
  validates :died, presence: true
  has_many :works
end
