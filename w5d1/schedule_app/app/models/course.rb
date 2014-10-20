class Course < ActiveRecord::Base
  attr_accessible :name, :programme_id, :price, :start_date, :end_date, :classroom_id

  has_and_belongs_to_many :users
  belongs_to :programme
  belongs_to :classrooms
end
