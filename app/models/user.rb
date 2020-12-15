class User < ApplicationRecord
  belongs_to :genre, optional: true
  has_many :nices, dependent: :destroy
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def already_nice?(ramenshop)
    self.nices.exists?(ramenshop_id: ramenshop.id)
  end
end
