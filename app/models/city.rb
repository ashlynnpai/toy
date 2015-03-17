class City < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  def self.find_available(id)
    find_by!(id: id, available: true)
	end
  
  def archive
    self.available = false
		self.save
  end
end