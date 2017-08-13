class Oo7er < ApplicationRecord
  belongs_to :group
  has_many :articles, primary_key: 'oo7er_id', inverse_of: :oo7er
end
