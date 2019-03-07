class User < ApplicationRecord
    has_many :user_dares
    has_many :dares, through: :user_dares

    # Current User is the FOLLOWER, FOLLOWEE is another user
    # Current user is following another user
    has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
    has_many :followees, through: :followee_follows, source: :followee

    # Current User is the FOLLOWEE, another user is the FOLLOWER
    # Current User is being followed by another user
    has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
    has_many :followers, through: :follower_follows, source: :follower

    validates :username, presence: true, uniqueness: true
    has_secure_password

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

end
