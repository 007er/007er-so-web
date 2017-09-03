class User < ApplicationRecord
  has_one :profile
  accepts_nested_attributes_for :profile #接受嵌套属性 profile

  belongs_to :user, required: false
  has_many :admins
  has_many :works
  has_many :coregories


  has_many :groups, :through => :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    is_admin
  end
end
