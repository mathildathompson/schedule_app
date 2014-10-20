class Classroom < ActiveRecord::Base
  attr_accessible :location_id, :name

  has_many :courses
  has_one :location
end
