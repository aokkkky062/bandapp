class Post < ApplicationRecord
  belongs_to :user
  has_many   :report_comments
  has_many   :favorites,      dependent: :destroy

  validates :date,        presence: true
  validates :program,     presence: true
  validates :information, presence: true

  def favorited?(user)
    favorites.where(user_id: user.id).exists?
  end
end
