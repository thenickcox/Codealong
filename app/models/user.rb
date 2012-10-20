class User < ActiveRecord::Base
  attr_accessible :bio, :email, :expertise, :name, :password_digest, :username
end
