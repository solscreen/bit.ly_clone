class LongUrl < ActiveRecord::Base
  attr_accessible :url

  has_many :short_urls, :dependent => :destroy
  validates_presence_of :url
  validates_uniqueness_of :url

  def shorten
    hex_key = get_hex
    short = ShortUrl.create!(:hex => hex_key, :long_url_id => id)
    short
  end

  def get_hex
    while true do
      short_url = "hu.ng/#{SecureRandom.urlsafe_base64(3)}"
      break unless ShortUrl.where(:hex => short_url).exists?
    end

    short_url
  end
end
