require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "mydb.db")
set :database, {adapter: "sqlite3", database: "mydb.db"}
require './models/student'
require './models/student_class'
require './models/college_class'


# get '/' do 
#     Student.all.to_yaml + CollegeClass.all.to_yaml + StudentClass.all.to_yaml
# end 


get '/students' do 
    @students = Student.all
    erb :students
end 

get '/student/:id' do
    @student = Student.find(params[:id])
    if @student.nil?
        return "Student not found"
    end 
    erb :student
end



get '/students2' do 
    @students = Student.all
    erb :students2
end 

post '/show_user' do
    @student = Student.find_by(name: params[:name])
    if @student.nil?
        return "Student not found"
    end 
    erb :student
end 





get '/classes' do 
    @classes = CollegeClass.all
    erb :classes
end 

get '/class/:id' do
    @class = CollegeClass.find(params[:id])
    if @class.nil?
        return "Class not found"
    end 
    erb :class
end




