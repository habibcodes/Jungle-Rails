class User < ActiveRecord::Base
  # add user auth methods to user 
  # model via bcrypt here
  has_secure_password

  # user regisration form validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: {minimum: 4}
  validates :password_confirmation, presence: true
end
