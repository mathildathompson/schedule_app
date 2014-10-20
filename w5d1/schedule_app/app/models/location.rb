class Location < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :classrooms
end
