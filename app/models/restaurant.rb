class Restaurant < ApplicationRecord

  validates :name, length: { maximum: 30 }

  has_many :reviews, dependent: :destroy

end
