class Goal < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :start_value, presence: true, :numericality => { :greater_than => 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :rate_of_return, presence: true, :numericality => { :greater_than => 0 }
  validates :rate_of_savings, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :rate_of_savings, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :currency, presence: true, length: { maximum: 3 }

end
