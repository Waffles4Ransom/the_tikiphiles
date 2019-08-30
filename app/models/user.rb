class User < ActiveRecord::Base
  has_secure_password
  has_many :drinks

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :password, length: {minimum: 6}, confirmation: true

end 