class Programme < ActiveRecord::Base
  attr_accessible :description, :name, :image

  has_many :courses
end
