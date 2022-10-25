class Tweet < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :like_users, source: :user, through: :likes
end
