class Goal < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :start_value, presence: true, :numericality => { :greater_than => 0 }

end
