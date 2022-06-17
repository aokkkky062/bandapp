class Post < ApplicationRecord
  belongs_to :user
  has_many   :report_comments

  validates :date,        presence: true
  validates :program,     presence: true
  validates :information, presence: true
end
