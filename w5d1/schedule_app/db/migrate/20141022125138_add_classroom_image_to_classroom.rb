class AddClassroomImageToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :classroom_image, :text
  end
end