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


## Challenge Steps

1. Create a Form allowing you to create a Course and Teacher and optionally assign it to multiple students. Use a Form object approach instead of nested params. 
2. Add a Search bar to the Courses index that will allow searching by course name and subject. (Feel free to add gems as needed)
3. Set up a job to send students their grades when the course finishes (end_date). Consider that more than one course could end on the same date.


