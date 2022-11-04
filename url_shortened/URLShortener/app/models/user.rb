# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :email, uniqueness: true, presence: true

    has_many :short_requests,
        primary_key: :id,
        foreign_key: :user_id,
        class: :ShortenedUrl
end
