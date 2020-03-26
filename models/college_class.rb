class CollegeClass < ActiveRecord::Base
  has_many :student_classes
  has_many :students, through: :student_classes
end
