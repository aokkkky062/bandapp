class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts,          dependent: :destroy
  has_many :report_comments
  has_many :forgets
  has_many :favorites,      dependent: :destroy
  
  validates :name, presence: true
end
