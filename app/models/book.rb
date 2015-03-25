class Book < ActiveRecord::Base

  scope :finished, ->{ where.not(finished_on: nil) } #same as scope :finished, -> { where('finished_on IS NOT NULL') }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
  validates :title, presence: true
  
end