class Category < ApplicationRecord
  has_many :works
  belongs_to :user, required: false


  validates :name, presence: true
  end
