class CreateStudentClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_classes do |t|
      t.integer :student_id
      t.integer :college_class_id
      # t.type :column_name
    end
  end
end
