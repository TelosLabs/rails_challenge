# README

# Project Setup Instructions

## Prerequisites

- Ruby
- Rails

## Installation

1. Clone the repository:

```bash
git clone <repository_url>
cd <project_directory>
bundle install
bin/dev
```

## General context

```
class Course < ApplicationRecord
  belongs_to :teacher

  has_many :enrollments
  has_many :students, through: :enrollments
  
  validates :name, presence: true
end

class Teacher < ApplicationRecord
  has_many :courses

  validates :name, presence: true
end

class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :name, presence: true
end

class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates :grade, presence: true
end

```


## Challenges

Choose at least 3 out of the 5 points to complete in 45 minutes. 

1. Create a Form for `Course registrations` that allows you to create a Course and its associated Teacher at the same time. Use a Form object approach to represent the Course Registration interface instead of nested params. 
2. Add a Search bar to the Courses index that will allow searching by course name and subject. (Feel free to add gems as needed)
3. Set up a job to send students their grades when the course finishes (end_date). Consider that more than one course could end on the same date.
4. Create a form for Course metrics that will allow you to select a course, and submit and that will produce the following metrics: course grade average, top 5 students and failed students (less than a 70 grade).
5. Add a button to the Courses index named "Compute Grades". The button will schedule a job to calculate the average grades of each curse and send through a turbo broadcast update the index to show the average for each course. 


