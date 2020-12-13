class Ramenshop < ApplicationRecord
  has_many :nices, dependent: :destroy
  has_many :posts, dependent: :destroy

  attachment :image
end
