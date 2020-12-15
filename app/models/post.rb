class Post < ApplicationRecord
  belongs_to :user
  belongs_to :ramenshop
  belongs_to :genre
  
  attachment :image
  
  enum submenu: {thats_all: 0,rice: 1, fried_rice: 2, gyouza: 3}
end
