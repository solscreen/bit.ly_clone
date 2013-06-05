class ChangeColumnKeyToHexOnShortUrl < ActiveRecord::Migration
  def change
    rename_column :short_urls, :key, :hex
  end
end
