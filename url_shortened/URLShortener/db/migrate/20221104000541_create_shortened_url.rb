class CreateShortenedUrl < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false, index: {unique: true}
      t.string :short_url, null: false, index: {unique: true}
      t.index [:long_url, :short_url], unique: true
      t.references :user, null: false, foreign_key: true #this gets the user
      t.timestamps
    end

  end
end
