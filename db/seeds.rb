# class Course < ApplicationRecord
#   belongs_to :teacher

#   has_many :enrollments
#   has_many :students, through: :enrollments
  
#   validates :name, presence: true
# end

# class Teacher < ApplicationRecord
#   has_many :courses

#   validates :name, presence: true
# end

# class Student < ApplicationRecord
#   has_many :enrollments
#   has_many :courses, through: :enrollments

#   validates :name, presence: true
# end

# class Enrollment < ApplicationRecord
#   belongs_to :course
#   belongs_to :student
# end

# Create 3 teachers
3.times do
  Teacher.create!(name: Faker::Name.name)
end

# For each teacher, create 3 courses
Teacher.all.each do |teacher|
  start_date = Faker::Date.between(from: 1.year.ago, to: 1.year.from_now)
  end_date = start_date + 6.months

  3.times do
    course = Course.create!(
      name: Faker::Educator.course_name, 
      subject: Faker::Educator.subject,
      teacher: teacher,
      start_date: start_date,
      end_date: end_date
    )

    # For each course, enroll 10 students
    10.times do
      student = Student.create!(name: Faker::Name.name)
      Enrollment.create!(
        course: course, 
        student: student,
        grade: Faker::Number.between(from: 0, to: 100)
      )
    end
  end
end
