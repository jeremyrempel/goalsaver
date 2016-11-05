class User < ApplicationRecord
    include Clearance::User

    # validations
    validates :fname, presence: true, length: { maximum: 50 }
    validates :lname, presence: true, length: { maximum: 50 }

end
