class Classroom < ActiveRecord::Base
  attr_accessible :location_id, :name, :classroom_image


  mount_uploader :classroom_image, PaintingImageUploader

  has_many :courses
  has_one :location
end
