class Valuation < ApplicationRecord
  belongs_to :user
  belongs_to :asslib

  attr_accessor :period

  # attr_writer
  def period=(val)

    case val
      when 'Q1'
        self[:date] = Date.strptime('2016-01-01', '%Y-%m-%d')
      when 'Q2'
        self[:date] = Date.strptime('2016-04-01', '%Y-%m-%d')
      when 'Q3'
        self[:date] = Date.strptime('2016-07-01', '%Y-%m-%d')
      when 'Q4'
        self[:date] = Date.strptime('2016-10-01', '%Y-%m-%d')
    end

  end

  def period
    'Q' + ((date.month / 3) + 1).to_s
  end

  validates :user, presence: true
  validates :asslib, presence: true
  validates :date, presence: true
  validates :value, presence: true, :numericality => {:greater_than => 0}
end
