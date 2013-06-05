class ShortUrl < ActiveRecord::Base

  attr_accessible :hex, :long_url_id

  belongs_to :long_url

  validates_presence_of :long_url_id, :hex



end
