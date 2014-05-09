class Movement < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  has_many :artists

  def self.search(search)
    if search
      where('name LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end
