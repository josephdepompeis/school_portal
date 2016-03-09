class Student < ActiveRecord::Base
  has_many :parents
  has_many :grades
  has_many :users
  belongs_to :teacher
end
