class Valuation < ApplicationRecord
  belongs_to :user
  belongs_to :asslib

  # attr_reader
  def period
    self[:period]
  end

  # attr_writer
  def period=(val)
    self[:period] = val
  end

  validates :date, presence: true
  validates :value, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
end
