class Restaurant < ApplicationRecord

  validates :name, length: { maximum: 30 }, uniqueness: true

  has_many :reviews, dependent: :destroy

end
