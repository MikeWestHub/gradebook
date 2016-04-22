class Teacher < ActiveRecord::Base
  has_many :students
  belongs_to :user

  accepts_nested_attributes_for :user
end
