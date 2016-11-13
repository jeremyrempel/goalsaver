class Asslib < ApplicationRecord
  belongs_to :user
  has_many :valuations

  validates :name, presence: true
end
