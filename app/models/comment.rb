class Comment < ApplicationRecord
  belongs_to :oo7er, primary_key: 'oo7er_id'
  belongs_to :article

end
