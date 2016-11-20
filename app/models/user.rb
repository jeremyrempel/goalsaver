class User < ApplicationRecord
    include Clearance::User

    has_many :asslibs
    has_many :goals

    # validations
    validates :fname, presence: true, length: { maximum: 50 }
    validates :lname, presence: true, length: { maximum: 50 }

end
