class Sighting < ActiveRecord::Base
  belongs_to :species

  validates :date, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
end
