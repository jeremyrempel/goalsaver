class Goal < ApplicationRecord
  belongs_to :user

  validate :end_date_must_be_after_start

  validates :user, presence: true
  validates :name, presence: true, length: {maximum: 50}
  validates :start_value, presence: true, :numericality => {:greater_than => 0}
  validates :end_value, presence: true, :numericality => {:greater_than => 0}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :rate_of_return, presence: true, :numericality => {:greater_than => 0}
  validates :rate_of_savings, presence: true, :numericality => {:greater_than_or_equal_to => 0}
  validates :currency, presence: true, length: {maximum: 3}

  def end_date_must_be_after_start
    if end_date.present? && start_date.present? && end_date <= start_date
      errors.add(:end_date, "must be after start date")
    end
  end

end
