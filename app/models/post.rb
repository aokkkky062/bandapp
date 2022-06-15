class Post < ApplicationRecord
  belongs_to :user

  validates :program,     presence: true
  validates :information, presence: true
end
