class Friendship < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :friend_user, class_name: "User"
end
