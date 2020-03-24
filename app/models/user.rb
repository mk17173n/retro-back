class User < ApplicationRecord
 
    validates :username, uniqueness: true
    validates :username, presence: true

    has_many :likes
    has_many :contents, through: :likes
    has_secure_password

end
