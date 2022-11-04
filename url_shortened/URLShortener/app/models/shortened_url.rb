# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ShortenedUrl < ApplicationRecord
    validates :short_url, uniqueness: true, presence: true

    belongs_to :asker_short_url,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    #after_initalize :generate_short_url
end
