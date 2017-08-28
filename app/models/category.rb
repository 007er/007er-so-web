class Category < ApplicationRecord
  has_many :works
  belongs_to :user
  belongs_to :admin
end
