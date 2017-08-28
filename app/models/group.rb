class Group < ApplicationRecord

  has_many :users, :through => :memberships

  validates :name, presence: true
end
