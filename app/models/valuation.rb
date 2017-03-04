class Valuation < ApplicationRecord
  belongs_to :user
  belongs_to :asslib

  # attr_writer
  def period=(val)
    self[:period] = val
  end

  def period
    "Q" + (((Time.now.month - 1) / 3) + 1).to_s
  end

  validates :user, presence: true
  validates :asslib, presence: true
  validates :date, presence: true
  validates :value, presence: true, :numericality => { :greater_than => 0 }
end
