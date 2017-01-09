class User < ApplicationRecord
    include Clearance::User

    # validations
    validates :fname, presence: true, length: { maximum: 50 }
    validates :lname, presence: true, length: { maximum: 50 }

    # foreign keys
    has_many :asslibs, dependent: :destroy
    has_many :goals, dependent: :destroy
    has_many :valuations, dependent: :destroy

end
