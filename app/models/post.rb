class Post < ApplicationRecord
  belongs_to :user

  validates :date,        presence: true
  validates :program,     presence: true
  validates :information, presence: true
end
