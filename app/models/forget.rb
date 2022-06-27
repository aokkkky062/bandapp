class Forget < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :date,      presence: true
  validates :image,     presence: true
  validates :object,    presence: true
  validates :place,     presence: true
end
