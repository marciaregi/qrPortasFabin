class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # has_one :door, :dependent => :destroy      
  # accepts_nested_attributes_for :door

  after_create :assign_default_role

  def assign_default_role
    add_role(:user)
  end
end
