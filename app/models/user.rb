class User < ActiveRecord::Base
  validates :name, presence: true
  validates :login, presence: true, uniqueness: true
  validates :password, confirmation: true, presence: true
  has_one :teacher
  has_one :student
  has_one :parent
  has_secure_password
end
