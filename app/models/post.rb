class Post < ApplicationRecord
  validates :program,     presence: true
  validates :information, presence: true
end
