class Student < ActiveRecord::Base
  has_many :grades
  has_many :parents
  belongs_to :teacher
  belongs_to :user

  accepts_nested_attributes_for :user
end
