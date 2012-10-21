class Skill < ActiveRecord::Base
  # Associations
  has_many :user_skills
  has_many :skills, through: :user_skills

  attr_accessible :name
end
