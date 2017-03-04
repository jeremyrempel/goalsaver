class Asslib < ApplicationRecord
  belongs_to :user
  has_many :valuations

  enum altype: [ :asset, :liability ]

  validates :user, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :altype, presence: true
  validates :active, inclusion: { in: [true, false] }
  validates :currency, presence: true
end
