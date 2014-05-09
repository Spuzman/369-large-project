class Artist < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :born, with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must have format: YYYY-MM-DD"
  validates :born, presence: true
  validates_format_of :died, with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must have format: YYYY-MM-DD"
  validates :died, presence: true
  has_many :works

  def self.search(search)
    if search
      if !Movement.where('name LIKE ?', "%#{search}%").empty?
        where('name LIKE ? OR born LIKE ? OR died LIKE ? OR movement_id LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", Movement.where('name LIKE ?', "%#{search}%").first.id)
      else
        where('name LIKE ? OR born LIKE ? OR died LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
      end
    else
      all
    end
  end
end
