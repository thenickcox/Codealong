class Skill < ActiveRecord::Base
  # Associations
  has_many :user_skills
  has_many :skills, through: :user_skills

  attr_accessible :name, :normalized_name

  # Callbacks
  before_save do |skill|
    skill.normalized_name = skill.name.strip.downcase()
  end
end
