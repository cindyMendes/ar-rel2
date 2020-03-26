class Student < ActiveRecord::Base
  has_many :student_classes
  has_many :college_classes, through: :student_classes
end
