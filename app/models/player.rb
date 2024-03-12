
class Player < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :stats

  

  validates :name, presence: true
  validates :position, presence: true
  validates :birthday, presence: true
  validates :height, presence: true, numericality: { greater_than: 0 }
  validates :weight, presence: true, numericality: { greater_than: 0 }
end
