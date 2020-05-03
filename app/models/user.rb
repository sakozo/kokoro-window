class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :group_users
  has_many :groups,through: :group_users
  has_many :emotions
  has_many :diaries
  has_one_attached :icon
end
