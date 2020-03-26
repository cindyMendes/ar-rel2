require 'active_record'
require './models/student.rb'
require './models/college_class.rb'
require './models/student_class.rb'
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "mydb.db")

Student.destroy_all
CollegeClass.destroy_all
StudentClass.destroy_all

student = Student.new
student.name = "Frank"
student.email = "frank@sample.com"
student.save

student = Student.new
student.name = "Jean"
student.email = "jean@sample.com"
student.save

student = Student.new
student.name = "Ellen"
student.email = "ellen@sample.com"
student.save

student = Student.new
student.name = "Mike"
student.email = "mike@sample.com"
student.save

student = Student.new
student.name = "George"
student.email = "george@sample.com"
student.save

student = Student.new
student.name = "Rene"
student.email = "rene@sample.com"
student.save

student = Student.new
student.name = "Frank"
student.email = "frank@sample.com"
student.save

college_class = CollegeClass.new
college_class.name="Algebra"
college_class.instructor="Patel"
college_class.save

college_class = CollegeClass.new
college_class.name="Economics"
college_class.instructor="Friedman"
college_class.save

college_class = CollegeClass.new
college_class.name="Business"
college_class.instructor="Jobs"
college_class.save

college_class = CollegeClass.new
college_class.name="Bowling"
college_class.instructor="Schmidt"
college_class.save

student = Student.find_by(name: "Frank")
student_class = StudentClass.new
student_class.student=student
student_class.college_class = CollegeClass.find_by(name: "Algebra")
student_class.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Business")
sc.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Bowling")
sc.save

student = Student.find_by(name: "Jean")
student_class = StudentClass.new
student_class.student=student
student_class.college_class = CollegeClass.find_by(name: "Algebra")
student_class.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Business")
sc.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Economics")
sc.save

student = Student.find_by(name: "Ellen")
student_class = StudentClass.new
student_class.student=student
student_class.college_class = CollegeClass.find_by(name: "Economics")
student_class.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Business")
sc.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Bowling")
sc.save

student = Student.find_by(name: "Rene")
student_class = StudentClass.new
student_class.student=student
student_class.college_class = CollegeClass.find_by(name: "Algebra")
student_class.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Business")
sc.save

student = Student.find_by(name: "Mike")
student_class = StudentClass.new
student_class.student=student
student_class.college_class = CollegeClass.find_by(name: "Algebra")
student_class.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Economics")
sc.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Bowling")
sc.save

student = Student.find_by(name: "George")
student_class = StudentClass.new
student_class.student=student
student_class.college_class = CollegeClass.find_by(name: "Algebra")
student_class.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Business")
sc.save
sc = StudentClass.new
sc.student=student
sc.college_class = CollegeClass.find_by(name: "Economics")
sc.save

s = Student.all
s.each do |r|
  puts r.name
  puts r.email
  r.college_classes.each do |rr|
    puts rr.name
    puts rr.instructor
  end
  puts
end

c = CollegeClass.all
c.each do |r|
  puts r.name
  puts r.instructor
  r.students.each do |rr|
    puts rr.name
    puts rr.email
  end
  puts
end
