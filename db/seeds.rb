# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
first_teacher = Teacher.create!(first:"first", last: "last")
first_student = Student.create!(first:"first", last: "last", teacher_id: first_teacher.id)
first_parent = Parent.create!(first:"first", last: "last", student_id: first_student.id)
teacher_user = User.create!(username: "teacheruser", password: "password", role:"teacher", teacher_id:first_teacher.id)
student_user = User.create!(username: "studentuser", password: "password", role:"student", student_id:first_student.id)
parent_user = User.create!(username: "parentuser", password: "password", role:"parent", parent_id:first_parent.id)
