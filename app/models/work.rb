class Work < ApplicationRecord
  validates :name, presence: true #限制work的name要是为空，就不得送出去

  has_many :admin

  belongs_to :category, required: false
  belongs_to :user, required: false

  scope :recent, -> { order("created_at DESC") } #scope可以用来包装一些查询码“最近的时序排列”
end
