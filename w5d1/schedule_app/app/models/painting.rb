class Painting < ActiveRecord::Base
  attr_accessible :name, :painting

  mount_uploader :painting, PaintingImageUploader
end
