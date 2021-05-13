class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, # :（コロン）で始まる部分がdeviseの機能名
         :recoverable, :rememberable, :validatable
         
  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  #dependent: :destroy= 親モデルを削除する際に、その親モデルに紐づく「子モデル」も一緒に削除できる
  attachment :profile_image
  
  
end
