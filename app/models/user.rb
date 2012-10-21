class User < ActiveRecord::Base
  # Associations
  has_many :user_skills
  has_many :skills, through: :user_skills

  attr_accessible :bio, :email, :name, :password_digest, :username, :user_type

  # Contact info
  attr_accessible :phone, :skype, :facebook, :twitter
  # Location
  attr_accessible :address1, :address2, :city, :state_province, :zip, :country

  # Validations
  validates_presence_of :email, :name, :password_digest, :username, :user_type
  validates :user_type, :inclusion =>
    {
      :in => %w{ developer teacher },
      :message => "%{ value } is not a valid user type"
    }
  attr_accessible :bio, :email, :expertise, :name, :password_digest, :username, :avatar
  
  validates_presence_of :email, :name, :password_digest, :username

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
