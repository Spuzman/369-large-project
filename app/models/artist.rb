class Artist < ActiveRecord::Base
  validates :name, presence: true
  validates :born, presence: true
  validates :died, presence: true
  # has_many :works
end
