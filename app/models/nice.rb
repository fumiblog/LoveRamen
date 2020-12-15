class Nice < ApplicationRecord
  belongs_to :user
  belongs_to :ramenshop
  
  validates_uniqueness_of :ramenshop_id, scope: :user_id
end
