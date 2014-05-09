class Work < ActiveRecord::Base
  validates :name, presence: true
  validates :year_completed, presence: true
  validates_format_of :year_completed, with: /\d{4}/, message: "must have format: YYYY"
  validates :materials, presence: true

  def self.search(search)
    if search
      if !Artist.where('name LIKE ?', "%#{search}%").empty? && Movement.where('name LIKE ?', "%#{search}%").empty?
        where('name LIKE ? OR year_completed LIKE ? OR materials LIKE ? OR artist_id LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", Artist.where('name LIKE ?', "%#{search}%").first.id)
      else
        if Artist.where('name LIKE ?', "%#{search}%").empty? && !Movement.where('name LIKE ?', "%#{search}%").empty?
          where('name LIKE ? OR year_completed LIKE ? OR materials LIKE ? OR artist_id LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", Artist.where(movement_id: Movement.where('name LIKE ?', "%#{search}%").first.id).first.id)
        else
          where('name LIKE ? OR year_completed LIKE ? OR materials LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
        end
      end
    else
      all
    end
  end
end
