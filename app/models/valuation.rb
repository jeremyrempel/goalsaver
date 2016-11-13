class Valuation < ApplicationRecord
  belongs_to :user
  belongs_to :asslib

  validates :year, presence: true
  validates :period, presence: true
  validates :value, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
