class Article < ApplicationRecord
  belongs_to :oo7er, primary_key: 'oo7er_id', inverse_of: :articles
end
