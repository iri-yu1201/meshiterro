class PostImage < ApplicationRecord

  belongs_to :user
  attachment :image
  #refileを使用するうえでのルール

end
