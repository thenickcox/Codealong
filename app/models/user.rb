class User < ActiveRecord::Base
  # Associations
  has_many :user_skills
  has_many :skills, through: :user_skills

  attr_accessible :bio, :email, :expertise, :name, :password_digest, :username
  
  validates_presence_of :email, :name, :password_digest, :username

end
