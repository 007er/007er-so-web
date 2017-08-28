class Work < ApplicationRecord
  validates :name, presence: true
  belongs_to :category, :optional => true
  belongs_to :users
end
