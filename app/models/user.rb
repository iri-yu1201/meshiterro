class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, # :（コロン）で始まる部分がdeviseの機能名
         :recoverable, :rememberable, :validatable
end
