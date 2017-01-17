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

  validates :date, presence: true
  validates :value, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
