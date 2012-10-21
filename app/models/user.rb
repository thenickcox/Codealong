class User < ActiveRecord::Base


  attr_accessible :bio, :email, :expertise, :name, :password_digest, :username
  
  validates_presence_of :email, :name, :password_digest, :username

  
end
