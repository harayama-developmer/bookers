class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # refile upload
  attachment :profile_image

  has_many :books, dependent: :destroy

  validates :name, presence: true, length: { in: 2..20 }
  validates :introduction, allow_blank: true, length: { maximum: 50 }
end
