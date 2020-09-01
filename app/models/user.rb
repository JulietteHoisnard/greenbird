class User < ApplicationRecord
  has_many :challenge_users, dependent: :destroy
  has_many :challenges, through: :challenge_users
  has_and_belongs_to_many :friends,
              class_name: "User",
              join_table: :friendships, 
              foreign_key: :user_id, 
              association_foreign_key: :friend_user_id,
              uniq: true,
              finder_sql: proc {
                %(SELECT DISTINCT "users.* FROM "users"
                INNER JOIN "friend_users" ON "users"."id" = "friend_users"."friend_user_id"
                WHERE "friend_users"."user_id" = #{self.id}
                UNION
                SELECT DISTINCT "users.* FROM "users"
                INNER JOIN "friend_users" ON "users"."id" = "friend_users"."user_id"
                WHERE "friend_users"."friend_user_id" = #{self.id}
              )}
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def avatar_url
    photo.present? ? photo.key : 'defaultavatar'
  end
end
