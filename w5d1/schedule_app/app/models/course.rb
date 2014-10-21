class Course < ActiveRecord::Base
  attr_accessible :name, :programme_id, :price, :start_date, :end_date, :classroom_id, :student_ids, :instructor_ids 

  has_and_belongs_to_many :students, class_name: "User", conditions: [ "role=?", "student"]
  has_and_belongs_to_many :instructors, class_name: "User", conditions: [ "role=?", "instructor"]
  belongs_to :programme
  belongs_to :classrooms
end
