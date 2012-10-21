class Skill < ActiveRecord::Base
  # Associations
  has_many :user_skills
  has_many :skills, through: :user_skills

  # Callbacks
  before_save :normalize_skill_name

  attr_accessible :name, :normalized_name

  private
    def normalize_skill_name(skill)
      skill.normalize_skill_name = skill.name.strip.downcase()
    end
end
