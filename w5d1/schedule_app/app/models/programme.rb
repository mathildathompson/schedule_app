class Programme < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :courses
end
