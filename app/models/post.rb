class Post < ApplicationRecord
  belongs_to :user_id
  belongs_to :ramenshop_id
  belongs_to :genre_id
  
  attachment :image
  
end
