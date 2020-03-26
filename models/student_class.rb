class StudentClass < ActiveRecord::Base
  belongs_to :student
  belongs_to :college_class
end
