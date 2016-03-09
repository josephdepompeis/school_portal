class Parent < ActiveRecord::Base
belongs_to :student
  has_many :users
end
