class Goal < ApplicationRecord
  validates :name, presence: true
  validates :value, presence: true, :numericality => { :greater_than => 0 }

end
