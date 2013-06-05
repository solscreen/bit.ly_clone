class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.integer :long_url_id
      t.string :key

      t.timestamps
    end
  end
end
