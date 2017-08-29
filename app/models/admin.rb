class Admin < ApplicationRecord
  KNOWN_ADMINS = ['breeder1121@gmail.com', 'siningdream@gmail.com']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :should_be_known_admin


  has_many :users
  belongs_to :category, required: false

  has_many :works

  private

  def should_be_known_admin
    errors.add(:email, 'This email is not trusted') unless KNOWN_ADMINS.include?(email)
  end
end
