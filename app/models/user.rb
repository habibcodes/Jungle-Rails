class User < ActiveRecord::Base
  # add user auth methods to user 
  # model via bcrypt here
  has_secure_password
end
