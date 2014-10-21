class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_confirmation, :role, :phone_number, :password
  

  has_secure_password

  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  has_and_belongs_to_many :courses

  # before_save :ensure_role_is_set

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  private
  def default_role
    self.role = 'student'
  end
end


